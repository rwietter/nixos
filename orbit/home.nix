{ nixpkgs, config, lib, pkgs, vars, ... }:

{
  nixpkgs.config.allowUnfree = true;
  # TODO please change the username & home directory to your own
  home.username = vars.os.hostname;
  home.homeDirectory = vars.os.homeDirectory;

  # link the configuration file in current directory to the specified location in home directory
  # home.file.".config/i3/wallpaper.jpg".source = ./wallpaper.jpg;

  # link all files in `./scripts` to `~/.config/i3/scripts`
  # home.file.".config/i3/scripts" = {
  #   source = ./scripts;
  #   recursive = true;   # link recursively
  #   executable = true;  # make all files executable
  # };

  # encode the file content in nix configuration file directly
  # home.file.".xxx".text = ''
  #     xxx
  # '';

  # set cursor size and dpi for 4k monitor
  xresources.properties = {
    "Xcursor.size" = 16;
    "Xft.dpi" = 70;
  };

  # Packages that should be installed to the user profile.
  home.packages = with pkgs; [
    # Code & Development Tools
    vscode  # code editor
    tokei  # code statistics
    strace  # system call monitoring
    ltrace  # library call monitoring
    lsof  # list open files
    tig  # git log viewer
    fossil  # distributed version control system
    hyperfine  # benchmarking tool
    fd  # find on steroids
    bat  # cat with wings
    glow  # markdown previewer
    jq  # JSON processor
    eza  # modern replacement for ‘ls’
    fzf  # fuzzy finder
    dzen2  # scriptable status bar
    stow  # manage symlinks

    # Command Line Utilities
    rsync  # file synchronization
    tree  # list directory structure
    curl  # HTTP client
    asciinema  # record terminal sessions
    ranger  # terminal file manager
    lf  # terminal file manager
    neofetch  # system info
    tealdeer  # tldr client
    pax-utils  # collection of security utilities
    inotify-tools  # inotifywait for file system watching
    translate-shell  # text translation in terminal
    viewnior  # image viewer
    zip unzip xz p7zip  # archiving tools
    xclip # clipboard manager
    zoxide  # directory jump tool
    bc # arbitrary precision calculator

    # Productivity & Note-taking
    zotero_7  # reference manager and reader
    obsidian  # note taking
    espanso  # text expander
    libreoffice-qt

    # System Monitoring & Information
    inxi  # system info tool
    vnstat  # network statistics
    sysstat  # system performance tools
    lm_sensors  # for `sensors` command
    pciutils  # provides `lspci`
    usbutils  # provides `lsusb`
    acpi  # command-line ACPI tool
    acpid  # ACPI events daemon
    upower  # power management tool

    # Networking Tools
    dnsutils  # includes `dig` and `nslookup`

    # Media & Image Tools
    stremio  # media center
    pavucontrol  # audio control
    playerctl  # media player control
    maim  # screenshot tool
    feh  # image viewer
    redshift  # color temperature adjustment

    # File Management & Browsers
    nautilus  # file manager

    # User Interface & Desktop Tools
    lxappearance  # GTK theme switcher
    dconf-editor  # GUI for `dconf`

    # Communication & Social
    telegram-desktop  # messaging

    # Miscellaneous
    powerline  # status line
    gpick # color picker
    nix-output-monitor  # enhanced logging for Nix

    # Scripts
     (writeShellScriptBin "coretemps" (builtins.readFile ../repo/config/awesome/scripts/coretemps.sh))
  ];

  # Enable/Disable Options
  direnv.enable = true;
  brave.enable = true;

  # This value determines the home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update home Manager without changing this value. See
  # the home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.05";

  home.enableNixpkgsReleaseCheck = false;
  # Let home Manager install and manage itself.
  programs.home-manager.enable = true;
}