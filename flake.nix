{
  description = "NixOS configs (WSL + native)";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixos-wsl.url = "github:nix-community/NixOS-WSL";

    home-manager = {
      url = "github:nix-community/home-manager/release-24.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, nixos-wsl, home-manager, ... }:
  let
    system = "x86_64-linux";
    mkHost = hostModule: nixpkgs.lib.nixosSystem {
      inherit system;
      modules = [
        hostModule

        # home-manager as a NixOS module
        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
        }
      ];
    };
  in
  {
    nixosConfigurations = {
      wsl = mkHost ./hosts/wsl/default.nix;
      native = mkHost ./hosts/native/default.nix;
    };
  };
}

