{ lib, pkgs, ... }:
{
  systemd.network.enable = true;
  systemd.services.sshd.wantedBy = lib.mkForce [ "multi-user.target" ];

  # users.extraUsers.root.openssh.authorizedKeys.keys = [
  # ];
}
