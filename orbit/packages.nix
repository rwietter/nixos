{ pkgs, pkgs-stable, ... }:

let
  lazyorg = import ../overlays/lazyorg.nix { inherit pkgs; };
in
{
  home.packages = with pkgs; [
    # Development Tools
    vscode # vscode
    tokei # code statistics
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files
    tig # git log viewer
    fossil # distributed version control system
    hyperfine # benchmarking tool
    fd # find on steroids
    bat # cat with wings
    glow # markdown previewer
    jq # JSON processor
    eza # modern replacement for ‘ls’
    docker-compose # container orchestration
    fzf # fuzzy finder
    dzen2 # scriptable status bar
    stow # manage symlinks
    dconf # Needed when gtk is enabled
    insomnia # The open-source, cross-platform API client for GraphQL, REST, WebSockets, SSE and gRPC. With Cloud, Local and Git storage.
    beekeeper-studio # Cross-platform SQL editor and database manager

    # Command Line Utilities
    rsync # file synchronization
    tree # list directory structure
    curl # HTTP client
    asciinema # record terminal sessions
    ranger # terminal file manager
    lf # terminal file manager
    neofetch # system info
    tealdeer # tldr client
    pax-utils # collection of security utilities
    inotify-tools # inotifywait for file system watching
    translate-shell # text translation in terminal
    viewnior # image viewer
    zip # A compression and file packaging utility
    unzip # list, test and extract compressed files in a ZIP archive
    xz # XZ-format compression utilities
    # p7zip # archiving tools
    xclip # clipboard manager
    zoxide # directory jump tool
    bc # arbitrary precision calculator
    just # A handy way to save and run project-specific commands
    reader # Lightweight tool offering better readability of web pages on the CLI

    # Productivity & Note-taking
    zotero_7 # reference manager and reader
    obsidian # note taking
    espanso # text expander
    anki # Spaced repetition flashcard program
    # libreoffice-qt

    # System Monitoring & Information
    inxi # system info tool
    vnstat # network statistics
    sysstat # system performance tools
    lm_sensors # for `sensors` command
    pciutils # provides `lspci`
    usbutils # provides `lsusb`
    acpi # command-line ACPI tool
    acpid # ACPI events daemon
    # upower # power management tool

    # Networking Tools
    dnsutils # includes `dig` and `nslookup`
    networkmanagerapplet # GUI for NetworkManager

    # Media & Image Tools
    pavucontrol # audio control
    maim # screenshot tool
    feh # image viewer
    redshift # color temperature adjustment
    reaper # audio editing
    ardour # digital audio workstation
    clapper # GNOME media player built using GTK4 toolkit and powered by GStreamer with OpenGL rendering
    mpv # General-purpose media player, fork of MPlayer and mplayer2
    stremio # p2p video streaming

    # File Management & Browsers
    nautilus # file manager

    # User Interface & Desktop Tools
    lxappearance # GTK theme switcher
    # dconf-editor # GUI for `dconf`

    # Communication & Social
    telegram-desktop # messaging

    # Miscellaneous
    # powerline # status line
    gpick # color picker
    nix-output-monitor # enhanced logging for Nix
    torrential # torrent client

    # Scripts
    (writeShellScriptBin "coretemps" (builtins.readFile ../repo/config/awesome/scripts/coretemps.sh))

    # lazyorg
  ];
}
