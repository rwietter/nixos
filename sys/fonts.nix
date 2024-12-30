{ lib, pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      atkinson-hyperlegible
      nerd-fonts.fantasque-sans-mono
    ];
    fontconfig = {
      defaultFonts = {
        serif = [
          "Space Grotesk"
          "Liberation Serif"
        ];
        sansSerif = [ "Atkinson Hyperlegible" ];
        monospace = [ "Fantasque Sans Mono" ];
      };
    };
  };
}
