{ pkgs, unstable, ... }:

let
  # lazyorg = import ../overlays/lazyorg.nix { inherit pkgs; };
  unstablePackages = [
    unstable.yt-dlp # YouTube downloader
    unstable.zellij # Terminal multiplexer
  ];
in
{
  home.packages =
    with pkgs;
    [
      # Development Tools
      nap # code snippets in the terminal
      tokei # code statistics
      strace # system call monitoring
      clipse # clipboard manager TUI for Unix
      ltrace # library call monitoring
      kubectl # Kubernetes CLI
      neovim # Vim text editor fork focused on extensibility and agility
      kubernetes-helm # Package manager for kubernetes
      #k3s # Lightweight Kubernetes distribution
      minikube # Tool that makes it easy to run Kubernetes locally
      lsof # list open files
      gitui # Blazing fast terminal-ui for Git written in Rust
      tailspin # Log file highlighter
      air # golang live reload
      rclone # Command line program to sync files and directories to and from major cloud storage
      tig # git log viewer
      fossil # distributed version control system
      hyperfine # benchmarking tool
      duf # Disk Usage/Free Utility
      fd # find on steroids
      bat # cat with wings
      glow # markdown previewer
      jq # JSON processor
      pv # monitor the progress of data through a pipe
      eza # modern replacement for ‘ls’
      docker-compose # container orchestration
      fzf # fuzzy finder
      dzen2 # scriptable status bar
      stow # manage symlinks
      dconf # Needed when gtk is enabled
      insomnia # The open-source, cross-platform API client for GraphQL, REST, WebSockets, SSE and gRPC. With Cloud, Local and Git storage.
      # beekeeper-studio # Cross-platform SQL editor and database manager
      vscode # Visual Studio Code - Code editor

      # Command Line Utilities
      rsync # file synchronization
      tree # list directory structure
      curl # HTTP client
      asciinema # record terminal sessions
      ranger # terminal file manager
      lf # terminal file manager
      starfetch # CLI star constellations displayer
      neofetch # system info
      vivid # A modern LS command
      tealdeer # tldr client
      onefetch # Git repository summary
      age # simple, modern and secure file encryption tool
      mpd # server music client
      ncmpcpp # music client visualizer
      pax-utils # collection of security utilities
      inotify-tools # inotifywait for file system watching
      translate-shell # text translation in terminal
      gpu-screen-recorder # screen recorder
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
      nitch # A system fetch utility that displays system information in a visually appealing way
      xorg.xdpyinfo # X11 display information utility
      waybar # Highly customizable Wayland bar for Sway and Wlroots based compositors
      
      # Productivity & Note-taking
      zotero_7 # reference manager and reader
      obsidian # note taking
      chromium # Web Browser
      espanso # text expander
      anki # Spaced repetition flashcard program
      spacedrive # Cross-platform file manager
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
      cameractrls-gtk4 # Camera controls for Linux
      redshift # color temperature adjustment
      reaper # audio editing
      ardour # digital audio workstation
      clapper # GNOME media player built using GTK4 toolkit and powered by GStreamer with OpenGL rendering
      mpv # General-purpose media player, fork of MPlayer and mplayer2
      stremio # p2p video streaming
      spotify # Play music from the Spotify music service

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
      fuzzel # Wayland-native application launcher, similar to rofi’s drun mode

      # Scripts
      (writeShellScriptBin "coretemps" (builtins.readFile ../repo/config/awesome/scripts/coretemps.sh))

      # lazyorg
    ]
    ++ unstablePackages;
}
