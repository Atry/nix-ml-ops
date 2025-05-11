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
        inputs',
        ...
      }:
      let
        yamlFormat = pkgs.formats.yaml { };
      in
      {
        ml-ops.common = common: {
          # Workaround for https://sourceware.org/bugzilla/show_bug.cgi?id=31991
          config.glibcTunables."glibc.rtld.optional_static_tls" = "2000";

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
            default = "${inputs'.lasm.packages.default}/lib/libld-audit-search-mod.so";
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

          config.environmentVariables = {
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
