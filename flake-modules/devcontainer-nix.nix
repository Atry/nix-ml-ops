topLevel@{ flake-parts-lib, inputs, ... }: {
  imports = [
    ./devcontainer.nix
    inputs.flake-parts.flakeModules.flakeModules
  ];
  flake.flakeModules.devcontainerNix = {
    imports = [
      topLevel.config.flake.flakeModules.devcontainer
    ];
    options.perSystem = flake-parts-lib.mkPerSystemOption ({ lib, config, pkgs, ... }: {
      ml-ops.devcontainer = devcontainer: {
        options.nixPackage = lib.mkOption {
          type = lib.types.package;
          default = topLevel.inputs.nix.packages."${pkgs.stdenv.system}".default;
          defaultText = lib.literalExpression ''inputs.nix.packages.''${pkgs.stdenv.system}.default'';
          description = ''
            The `nix` package that the `nix` wrapper script in the dev shell executes.
          '';
        };

        config.devenvShellModule = devenvShellModule: {

          # Provides nix-shell and the other commands of `nixPackage`. nix-direnv runs the
          # `nix` found in the same directory as the first `nix-shell` on PATH, so
          # without this a direnv reload from inside the dev shell runs the system's nix,
          # which may be linked against another glibc and then crashes under LD_AUDIT.
          # Measured 2026-09-13: with the dev shell loaded, `direnv exec .` ran
          # /run/current-system/sw/bin/nix (Determinate Nix 3.20.0, glibc 2.40-218),
          # which failed with "shared object not open".
          # mkAfter keeps the `nix` wrapper script below ahead of `nixPackage`'s own `nix`:
          # the dev shell's PATH follows the order of `packages`, and measured
          # 2026-09-13 without mkAfter, `nixPackage`'s bin preceded the wrapper's.
          packages = lib.mkAfter [ devcontainer.config.nixPackage ];

          scripts.nix = {
            description = ''
              A wrapper script of `nix` that will automatically insert the extra arguments configured in `devenv.flakeArgs` when running supported subcommands.
            '';
            exec = ''
              case "$1" in
                flake)
                  if [ "$#" -ge 2 ]; then
                    case "$2" in
                      lock|update)
                        ;;
                      *)
                        NUMBER_OF_SUB_COMMANDS=2
                        ;;
                    esac
                  fi
                  ;;
                develop|shell|flake|build|run|check|repl|bundle)
                  NUMBER_OF_SUB_COMMANDS=1
                  ;;
              esac

              if [ -z "''${NUMBER_OF_SUB_COMMANDS+x}" ]; then
                exec ${lib.getExe devcontainer.config.nixPackage} "$@"
              else
                exec ${lib.getExe devcontainer.config.nixPackage} "''${@:1:$NUMBER_OF_SUB_COMMANDS}" ${lib.escapeShellArgs devenvShellModule.config.devenv.flakeArgs} "''${@:$(($NUMBER_OF_SUB_COMMANDS+1))}"
              fi
            '';
          };
        };
      };
    });
  };
}
