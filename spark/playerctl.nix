{ lib, pkgs, ...}:


with lib; {
  services.playerctld = {
    enable = true;
    package = pkgs.playerctl
  }
}