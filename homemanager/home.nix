{
  vars,
  ...
}:

{
  imports = [
    ./packages.nix
    ../apps
    ../shell
    ../services
    ../ui
  ];

  home.username = vars.os.hostname;
  home.homeDirectory = vars.os.homeDirectory;

  # Enable/Disable Options
  fish.enable = true; # Fish shell
  direnv.enable = true; # A shell extension that loads/unloads environment variables depending on the current directory
  devenv.enable = false; # Composable Developer Environments using Nix
  brave.enable = true; # A privacy-focused web browser
  nil.enable = true; # A Nix Language Server
  playerctl.enable = true; # media player control
  code.enable = true; # Visual Studio Code
  rofi.enable = true; # A window switcher, application launcher and dmenu replacement
	tmux.enable = true; # Terminal multiplexer
	up.enable = true; # Ultimate Plumber
	glance.enable = true; # A self-hosted dashboard
  rw.rmpc.enable = true; # Remote Music Player Client\
	rw.discord.enable = true; # Discord
	rw.gtk.enable = true; # GTK integration

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
