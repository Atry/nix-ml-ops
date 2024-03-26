topLevel@{ flake-parts-lib, inputs, ... }: {
  imports = [
    ./common.nix
    inputs.flake-parts.flakeModules.flakeModules
  ];
  flake.flakeModules.ldFloxlib = {
    imports = [
      topLevel.config.flake.flakeModules.common
    ];
    options.perSystem = flake-parts-lib.mkPerSystemOption ({ system, lib, pkgs, ... }: {
      ml-ops.common = common@{ config, ... }: {
        options.ldFloxlib.package = lib.mkOption {
          type = lib.types.package;
          default = inputs.ld-floxlib.packages.${system}.ld-floxlib.override {
            inherit (pkgs) buildEnv stdenv;
          };
        };
        options.ldFloxlib.floxEnvLibraries = lib.mkOption {
          type = lib.types.listOf lib.types.path;
        };
        config.ldFloxlib.floxEnvLibraries = [ ];

        config.environmentVariables = {
          LD_AUDIT = "${common.config.ldFloxlib.package}/lib/ld-floxlib.so";
          FLOX_ENV = "${pkgs.symlinkJoin {
            name = "flox-env";
            paths = common.config.ldFloxlib.floxEnvLibraries;
          }}";
        };

      };

    });
  };
}
