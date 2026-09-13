topLevel@{ flake-parts-lib, inputs, ... }:
{
  imports = [
    ./common.nix
    ./glibc-tunables.nix
    inputs.flake-parts.flakeModules.flakeModules
  ];
  flake.flakeModules.ldFallback = {
    imports = [
      topLevel.config.flake.flakeModules.common
      topLevel.config.flake.flakeModules.glibcTunables
    ];
    options.perSystem = flake-parts-lib.mkPerSystemOption (
      {
        system,
        lib,
        pkgs,
        ...
      }:
      let
        yamlFormat = pkgs.formats.yaml { };
      in
      {
        ml-ops.common = common: {
          # Workaround for https://sourceware.org/bugzilla/show_bug.cgi?id=31991: under
          # LD_AUDIT, ld.so allocates the TCB before it knows the program's static TLS
          # needs, so every initial-exec TLS segment of the program's libraries must fit
          # in this surplus. Measured 2026-09-13 with Determinate Nix 3.22.3, whose
          # libnixexpr.so has a 6272-byte STATIC_TLS segment: `nix --version` fails with
          # "cannot allocate memory in static TLS block" at 6336 and runs at 6337. 8192
          # leaves headroom above that reading.
          config.glibcTunables."glibc.rtld.optional_static_tls" = "8192";

          options.ldFallback.libraries = lib.mkOption {
            type = lib.types.listOf lib.types.path;
          };
          config.ldFallback.libraries = [ ];

          options.ldFallback.path = lib.mkOption {
            type = lib.types.path;
            default = "${
              pkgs.symlinkJoin {
                name = "ld-fallback-path";
                paths = common.config.ldFallback.libraries;
              }
            }/lib";
            defaultText = lib.literalExpression ''
              pkgs.symlinkJoin {
                name = "ld-fallback-path";
                paths = cfg.libraries;
              } + "/lib"
            '';
          };

          options.ldFallback.enablelogging = lib.mkEnableOption "logging";

          options.ldFallback.libaudit = lib.mkOption {
            type = lib.types.path;
            default = "${pkgs.ld-audit-search-mod}/lib/libld-audit-search-mod.so";
            defaultText = lib.literalExpression ''
              ''${pkgs.ld-audit-search-mod}/lib/libld-audit-search-mod.so
            '';
          };

          options.ldFallback.preferRunpathOverLdLibraryPath = lib.mkOption {
            type = lib.types.bool;
            default = true;
          };

          options.ldFallback.lasmConfig = lib.mkOption {
            type = yamlFormat.type;
            default = {
              rules = [
                {
                  # Apply to both nix binaries loading manylinux ABI libraries, such as `/nix/store/kjgslpdqchx1sm7a5h9xibi5rrqcqfnl-python3-3.12.8/bin/python`, and non-nix binaries like `~/.vscode-server/bin/ddc367ed5c8936efe395cffeec279b04ffd7db78/node` loading system libraries.
                  cond.rtld = "any";
                  libpath = lib.optionalAttrs (common.config.ldFallback.preferRunpathOverLdLibraryPath) {
                    save = true;
                  };
                  default = {
                    prepend =
                      (lib.optional (common.config.ldFallback.preferRunpathOverLdLibraryPath) {
                        saved = "libpath";
                      })
                      ++ [
                        { dir = common.config.ldFallback.path; }
                      ];
                  };
                }
              ];
            };
            defaultText = lib.literalExpression ''
              {
                rules = [
                  {
                    cond.rtld = "any";
                    libpath = {
                      save = true;
                    };
                    default = {
                      prepend = [
                        { saved = "libpath"; }
                        { dir = cfg.path; }
                      ];
                    };
                  }
                ];
              }
            '';
          };

          # LD_AUDIT and its search-mod config are glibc/ELF dynamic-linker
          # features that exist only on Linux. macOS uses Mach-O and dyld, where
          # these variables do nothing and `pkgs.ld-audit-search-mod` is not
          # available (evaluating it fails on x86_64-darwin), so gate on Linux.
          config.environmentVariables = lib.mkIf pkgs.stdenv.hostPlatform.isLinux {
            LD_AUDIT = toString common.config.ldFallback.libaudit;
            LD_AUDIT_SEARCH_MOD_CONFIG = toString (
              yamlFormat.generate "lasm-config.yaml" common.config.ldFallback.lasmConfig
            );
          };
        };
      }
    );
  };
}
