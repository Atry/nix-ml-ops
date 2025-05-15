topLevel@{ flake-parts-lib, lib, ... }:
{
  imports = [
    ./devcontainer.nix
    topLevel.inputs.flake-parts.flakeModules.flakeModules
  ];
  flake.flakeModules.vscode = flakeModule: {
    imports = [
      topLevel.config.flake.flakeModules.devcontainer
    ];
    options.perSystem =
      let
        settingsJson = ".vscode/settings.json";

        mkRecursiveDefault =
          value:
          if builtins.isAttrs value then
            lib.attrsets.mapAttrs (name: mkRecursiveDefault) value
          else
            lib.mkDefault value;
      in
      flake-parts-lib.mkPerSystemOption {
        config.ml-ops.devcontainer.nixago.copiedFiles = [
          settingsJson
        ];
        config.ml-ops.devcontainer.nixago.requests = {
          options = {
            ".vscode/extensions.json".data.recommendations = lib.mkOption {
              type = lib.types.listOf lib.types.str;
              default = [ ];
            };
            ${settingsJson} = {
              data = lib.mkOption {
                type = lib.types.attrsOf lib.types.anything;
                default = { };
              };
            };
          };

          config = {
            ${settingsJson}.data = lib.mkMerge [
              (
                if builtins.pathExists "${flakeModule.self}/${settingsJson}" then
                  mkRecursiveDefault (builtins.fromJSON (builtins.readFile "${flakeModule.self}/${settingsJson}"))
                else
                  { }
              )
              { "files.associations".".envrc.private" = "shellscript"; }
            ];

            ".vscode/extensions.json".data = {
              "recommendations" = [
                "mkhl.direnv"
              ];
            };

          };
        };
      };
  };
}
