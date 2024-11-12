{ lib, pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      "atkinson-hyperlegible"
      (nerdfonts.override { fonts = [ "FantasqueSansMono" ]; })
    ];
    fontconfig = {
      defaultFonts = {
        serif = [  "Space Grotesk" "Liberation Serif" ];
        sansSerif = [ "Atkinson Hyperlegible" ];
        monospace = [ "Fantasque Sans Mono" ];
      };
    };
  };
}