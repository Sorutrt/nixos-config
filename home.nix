{ config, pkgs, ... }:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "25.05";
  home.packages = (with pkgs; [
    nnn
    lazygit
    unstable.jujutsu
  ];

  programs.home-manager.enable = true;
}
