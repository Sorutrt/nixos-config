{ ... }:
{
  imports = [
    ../profiles/common.nix
    ../profiles/cli.nix
    # GUIはネイティブでだけ入れたいので、ここで切り替えたい気持ちになるけど、
    # まずは「共通ユーザー」を完成させて、必要になったら hosts 側で import を差し替えるのが楽。
  ];

  home.username = "nixos";
  home.homeDirectory = "/home/nixos";
  home.stateVersion = "24.11";

  programs.home-manager.enable = true;
}
