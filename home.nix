{ config, pkgs, ... }:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "25.05";
  home.packages = with pkgs; [
    git
    nnn
    lazygit
    unstable.jujutsu
    codex
    wget
    zsh
  ];

  programs.home-manager.enable = true;
}
