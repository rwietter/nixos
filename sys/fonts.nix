{
  lib,
  pkgs,
  vars,
  ...
}:

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
          vars.os.font.serif
        ];
        sansSerif = [ vars.os.font.sans ];
        monospace = [ vars.os.font.mono ];
      };
    };
  };
}
