{
  flake.nixosModules.nixSettings = { pkgs, ... }: {
    nix.settings.auto-optimise-store = true;
    nix.settings.experimental-features = [
      "impure-derivations"
      "ca-derivations"
      "nix-command"
      "flakes"
      "repl-flake"
    ];
    nix.settings.extra-trusted-users = [
      "@users" # Trust all normal users
    ];
  };
}
