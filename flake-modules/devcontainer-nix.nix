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
      ml-ops.devcontainer = {
        config.devenvShellModule = devenvShellModule: {

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
                exec ${lib.getExe topLevel.inputs.nix.packages."${pkgs.stdenv.system}".default} "$@"
              else
                exec ${lib.getExe topLevel.inputs.nix.packages."${pkgs.stdenv.system}".default} "''${@:1:$NUMBER_OF_SUB_COMMANDS}" ${lib.escapeShellArgs devenvShellModule.config.devenv.flakeArgs} "''${@:$(($NUMBER_OF_SUB_COMMANDS+1))}"
              fi 
            '';
          };
        };
      };
    });
  };
}
