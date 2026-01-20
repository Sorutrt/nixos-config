{ pkgs, ... }:
{
  # WSLだとGUIはWslgで足りることが多いので、ここでは軽めに
  environment.systemPackages = with pkgs; [
    wslu
  ];
}
