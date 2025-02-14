{ lib, pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      atkinson-hyperlegible
      meslo-lgs-nf
      (nerdfonts.override {
        fonts = [
          "FantasqueSansMono"
        ];
      })
    ];
    fontconfig = {
      defaultFonts = {
        serif = [
          "Space Grotesk"
          "Liberation Serif"
        ];
        sansSerif = [ "MesloLGS NF" ]; # Atkinson Hyperlegible
        monospace = [ "Fantasque Sans Mono" ];
      };
    };
  };
}
