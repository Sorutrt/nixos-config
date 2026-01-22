{ config, nixpkgs, inputs, ... }:
let
{
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
};
in
{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "24.11";
  home.packages = with pkgs; [
    nnn
    lazygit
    jujutsu
  ];

  programs.home-manager.enable = true;
}
