topLevel@{ inputs, flake-parts-lib, ... }: {
  imports = [
    ./devcontainer.nix
    ./vscode.nix
    inputs.flake-parts.flakeModules.flakeModules
  ];
  flake.flakeModules.nixIde = {
    imports = [
      topLevel.config.flake.flakeModules.devcontainer
      topLevel.config.flake.flakeModules.vscode
    ];
    options.perSystem = flake-parts-lib.mkPerSystemOption ({ config, pkgs, lib, system, ... }: {
      ml-ops.devcontainer = {
        nixago.requests = {
          ".vscode/extensions.json".data = {
            recommendations = [
              "jnoortheen.nix-ide"
            ];
          };
        };
        devenvShellModule = {
          packages = [
            pkgs.nil
            pkgs.nixpkgs-fmt
          ];
          languages.nix.enable = true;
        };
      };

      # TODO: Other IDE settings
    });
  };
}
