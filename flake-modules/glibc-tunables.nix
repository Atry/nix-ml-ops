topLevel@{ flake-parts-lib, inputs, ... }:
{
  imports = [
    ./common.nix
    inputs.flake-parts.flakeModules.flakeModules
  ];
  flake.flakeModules.glibcTunables = {
    imports = [
      topLevel.config.flake.flakeModules.common
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
          options.glibcTunables = lib.mkOption {
            type = lib.types.attrsOf (lib.types.str);
            default = { };
          };

          config.environmentVariables = {
            GLIBC_TUNABLES = lib.concatStringsSep ":" (
              lib.mapAttrsToList (name: value: "${name}=${value}") common.config.glibcTunables
            );
          };
        };
      }
    );
  };
}
