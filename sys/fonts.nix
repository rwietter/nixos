{
  pkgs,
  vars,
  ...
}:

{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      atkinson-hyperlegible
      nerd-fonts.fantasque-sans-mono
      nerd-fonts.agave
      nerd-fonts.anonymice
      nerd-fonts.arimo
      nerd-fonts.geist-mono
      nerd-fonts.jetbrains-mono
      nerd-fonts.monaspace
      nerd-fonts.zed-mono
      nerd-fonts.symbols-only
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
