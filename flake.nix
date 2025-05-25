{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, here using the nixos-24.11 branch
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    nixos-wsl.url = "github:nix-community/NixOS-WSL";
  };

  outputs = { self, nixpkgs, nixos-wsl, ... }@inputs: {
    # The host with the hostname `my-nixos` will use this configuration
    nixosConfigurations.myNixOS = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./configuration.nix
        nixos-wsl.nixosModules.default
          {
            system.stateVersion = "24.11";
            wsl.enable = true;
          }
      ];
    };
  };
}
