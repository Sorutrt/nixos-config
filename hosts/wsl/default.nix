{ inputs, ... }:
{
  imports = [
    ../../modules/common.nix
    ../../modules/wsl.nix
    # 既存の設定を移植するなら、ここでさらにファイルを分割してimportしてもOK
  ];

  system.stateVersion = "24.11";

  # NixOS-WSL module
  wsl.enable = true;

  # home-manager user wiring
  home-manager.users.nixos = import ../../home/users/nixos.nix;
}
