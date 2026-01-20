{ ... }:
{
  imports = [
    ../../modules/common.nix
    ../../modules/desktop.nix
  ];

  system.stateVersion = "24.11";

  # 将来ネイティブを作るときにここを足す
  # imports = [ ./hardware-configuration.nix ];

  home-manager.users.nixos = import ../../home/users/nixos.nix;
}
