{ config, pkgs, unstablePkgs, ... }:

{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "25.05";
  home.packages = (with pkgs; [
    nnn
    lazygit
  ]) ++ [
    unstablePkgs.jujutsu
  ];

  programs.home-manager.enable = true;
}
