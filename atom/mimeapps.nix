{ config, lib, pkgs, ... }:

{
  xdg.configFile = lib.mkForce {
    "mimeapps.list" = {
      force = true;
      source = ../repo/config/mimeapps.list;
    };
  };
}