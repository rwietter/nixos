# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, lib, ... }:


{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./sys
    ];

  # nixpkgs.overlays = [ (import ./overlays.nix) ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Sao_Paulo";

  # Select internationalisation properties.
  i18n.defaultLocale = "pt_BR.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  # Enable hyperland
  programs.hyprland = {
   enable = true; 
   xwayland.enable = true;
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.displayManager.startx.enable = true;

  # Change DPI 
  services.xserver.dpi = 70;

  # Enable the XFCE Desktop Environment.
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.desktopManager.xfce.enable = true;

  # Use tarball for awesome because widgets needs lua modules only available in in awesome-git
  # Here <https://docs.windswept.digital/nixos/awesomewm-git>
  services.xserver.windowManager.awesome = {
    enable = true;
    luaModules = with pkgs.luaPackages; [
      luarocks # is the package manager for Lua modules
      luadbi-mysql # Database abstraction layer
    ];
    package = pkgs.awesome.overrideAttrs (old: {
      version = "1f7ac8f9c7ab9fff7dd93ab4b29514ff3580efcf";
      src = pkgs.fetchFromGitHub {
        owner = "awesomeWM";
        repo = "awesome";
        rev = "1f7ac8f9c7ab9fff7dd93ab4b29514ff3580efcf";
        hash = "sha256-D5CTo4FvGk2U3fkDHf/JL5f/O1779i92UcRpPn+lbpw=";
      };
      patches = [];
      postPatch = ''
        patchShebangs tests/examples/_postprocess.lua
      '';
    });
  };

  # services.xserver.displayManager.defaultSession = "awesome";

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "br";
    variant = "abnt2";
  };

  # Configure console keymap
  console.keyMap = "br-abnt2";

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    # If you want to use JACK applications, uncomment this
    #jack.enable = true;

    # use the example session manager (no others are packaged yet so this is enabled by default,
    # no need to redefine it in your config for now)
    #media-session.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.rwietter = {
    isNormalUser = true;
    shell = pkgs.fish;
    description = "rwietter";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
      brave
      kitty
      awesome
    ];
  };


  # fonts.packages = with pkgs; [
  #  nerdfonts
  #  meslo-lgs-nf
  # ];

  # Install firefox.
  programs.firefox.enable = false;

  # Enable Fish shell.
  programs.fish.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    home-manager
    
    # Xorg
    xorg.xdpyinfo

    # Libs
    imlib2 # image loading and rendering library
  ];

  environment.sessionVariables = {
    XDG_CONFIG_HOME = "$HOME/.config";
    # XDG_CACHE_HOME  = "{HOME}/.cache";
    # XDG_DATA_HOME   = "{HOME}/.local/share";
    # XDG_STATE_HOME  = "{HOME}/.local/state";
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05";
}
