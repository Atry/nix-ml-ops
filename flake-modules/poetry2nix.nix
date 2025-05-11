topLevel@{ inputs, flake-parts-lib, ... }: {
  imports = [
    ./common.nix
    ./python-package.nix
    inputs.flake-parts.flakeModules.flakeModules
  ];
  flake.flakeModules.poetry2nix = flakeModule: {
    imports = [
      topLevel.config.flake.flakeModules.common
      topLevel.config.flake.flakeModules.pythonPackage
    ];
    options.perSystem = flake-parts-lib.mkPerSystemOption
      ({ lib, system, pkgs, ... }: {
        ml-ops.common = common: {
          options.poetry2nix.pkgs = lib.mkOption {
            description = ''
              The nix package set to use for poetry2nix.

              It is by default set to the nixpkgs from `nix-ml-ops`'s lock file with a python package specified by `perSystem.ml-ops.common.pythonPackage`.
            '';
            defaultText = lib.literalExpression ''
              pkgs.appendOverlays [
                (self: super: {
                  ''${common.config.pythonPackage.base-package.pythonAttr} = lib.pipe super.''${common.config.pythonPackage.base-package.pythonAttr} common.config.pythonPackage.pipe;
                })
              ]
            '';
            default = pkgs.appendOverlays [
              (self: super: {
                # Set the config.pythonPackage to poetry2nix's `pkgs` so that Python's dependents are rebuilt against the custom Python specified in config.pythonPackage.
                ${common.config.pythonPackage.base-package.pythonAttr} = lib.pipe super.${common.config.pythonPackage.base-package.pythonAttr} common.config.pythonPackage.pipe;
              })
            ];
          };
          options.poetry2nix.python = lib.mkOption {
            default = common.config.poetry2nix.pkgs.${common.config.pythonPackage.base-package.pythonAttr};
          };
          options.poetry2nix.poetry2nixLib = lib.mkOption {
            default = (inputs.poetry2nix.lib.mkPoetry2Nix {
              pkgs = common.config.poetry2nix.pkgs;
            });
          };
          options.poetry2nix.args = lib.mkOption {
            type = lib.types.attrsOf lib.types.anything;
            default = { };
          };
          config.poetry2nix.args = {
            preferWheels = lib.mkDefault true;
            python = common.config.poetry2nix.python;
            groups = [ "main" ];
          } // (lib.optionalAttrs (builtins.compareVersions builtins.nixVersion "2.20" == -1) {
            # For nix 2.19 or earlier, use flake's self input to determine projectDir.
            # This approach will lead to stack overflow in nix 2.20 or later due to https://github.com/NixOS/nix/issues/9672
            projectDir = lib.mkDefault flakeModule.self.sourceInfo.outPath;
          }) // (lib.optionalAttrs (builtins.isPath flakeModule.moduleLocation) {
            # For nix 2.20 or later, use the `mkFlake`'s `moduleLocation` to determine projectDir if it is a path.
            # Assuming `moduleLocation` is `./flake.nix`, then the Poetry project directory is set to `./flake.nix/..`, normalized to `./.`
            projectDir = lib.mkDefault /${flakeModule.moduleLocation}/..;
          });
        };

      });
  };
}
