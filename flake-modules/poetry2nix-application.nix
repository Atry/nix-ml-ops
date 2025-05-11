topLevel@{ inputs, flake-parts-lib, ... }: {
  imports = [
    ./common.nix
    ./python-package.nix
    ./runtime.nix
    ./poetry2nix.nix
    inputs.flake-parts.flakeModules.flakeModules
  ];
  flake.flakeModules.poetry2nixApplication = flakeModule: {
    imports = [
      topLevel.config.flake.flakeModules.common
      topLevel.config.flake.flakeModules.pythonPackage
      topLevel.config.flake.flakeModules.runtime
      topLevel.config.flake.flakeModules.poetry2nix
    ];
    options.perSystem = flake-parts-lib.mkPerSystemOption
      ({ lib, system, pkgs, ... }: {

        ml-ops.runtime = runtime: {
          options.poetryApplicationArgs = lib.mkOption {
            type = lib.types.attrsOf lib.types.anything;
            default = { };
          };
          config.poetryApplicationArgs = runtime.config.poetry2nix.args;
          options.poetryApplication = lib.mkOption {
            type = lib.types.package;
            defaultText = lib.literalExpression "mkPoetryApplication poetryApplicationArgs";
            default = runtime.config.poetry2nix.poetry2nixLib.mkPoetryApplication runtime.config.poetryApplicationArgs;
          };
          options.poetryApplicationDependencyEnv = lib.mkOption {
            type = lib.types.package;
            defaultText = lib.literalExpression "poetryApplication.dependencyEnv.override { ignoreCollisions = true; }";
            default = runtime.config.poetryApplication.dependencyEnv.override {
              ignoreCollisions = true;
            };
          };
          config.devenvShellModule.packages = lib.mkIf (builtins.pathExists "${flakeModule.self}/poetry.lock") [
            runtime.config.poetryApplicationDependencyEnv
          ];
        };
      });
  };
}
