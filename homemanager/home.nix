{
  vars,
  ...
}:

{
  imports = [
    ./packages.nix
  ];

  nixpkgs.config.allowUnfree = true;
  home.username = vars.os.hostname;
  home.homeDirectory = vars.os.homeDirectory;

  # set cursor size and dpi for 4k monitor
  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 70;
    "Xft.autohint" = 0;
    "Xft.lcdfilter" = "lcddefault";
    "Xft.hintstyle" = "hintfull";
    "Xft.hinting" = 1;
    "Xft.antialias" = 1;
    "Xft.rgba" = "rgb";
  };

  # Enable/Disable Options
  direnv.enable = true; # A shell extension that loads/unloads environment variables depending on the current directory
  devenv.enable = true; # Composable Developer Environments using Nix
  brave.enable = true; # A privacy-focused web browser
  nil.enable = true; # A Nix Language Server
  playerctl.enable = true; # media player control
  vscode.enable = true; # Visual Studio Code
  rofi.enable = true; # A window switcher, application launcher and dmenu replacement

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "25.05";

  # Determines whether to check for release version mismatch between Home Manager and Nixpkgs. Recommended to enable.
  home.enableNixpkgsReleaseCheck = true;

  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}
