{ lib, config, pkgs, mylib, theme, vars, ... }:

with lib; mkIf (vars.os.desktop == "hyprland") {
  programs.hyprland = {
   enable = true; 
   xwayland.enable = true;
  };
}
