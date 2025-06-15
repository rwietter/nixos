{ lib, config, pkgs, mylib, theme, vars, ... }:

{
  programs.hyprland = {
   enable = true; 
   xwayland.enable = true;
  };
}
