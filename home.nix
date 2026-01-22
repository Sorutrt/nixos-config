{ config, pkgs, inputs, ... }:
let
  pkgsUnstable = import inputs.nixpkgs-unstable {
    system = pkgs.system;
    config.allowUnfree = true;
};
in
{
  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "24.11";
  home.packages = with pkgs; [
    nnn
    lazygit
  ] ++ [
    pkgsUnstable.jujutsu
  ];

  programs.home-manager.enable = true;
}
