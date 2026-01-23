{ config, pkgs, inputs, ... }:

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
