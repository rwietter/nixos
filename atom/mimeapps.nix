{ config, lib, pkgs, ... }:

{
  xdg.configFile."mimeapps.list" = lib.mkForce {
    force = true;
    source = ../repo/config/mimeapps.list;
  };
}