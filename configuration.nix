# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{
  pkgs,
  ...
}:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
    ./sys
  ];

  # nixpkgs.overlays = [ (import ./overlays.nix) ];
  # nixpkgs.config.allowUnsupportedSystem = true;

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Use the latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_zen; # pkgs.linuxPackages_latest; <https://nixos.wiki/wiki/Linux_kernel>

  networking.hostName = "nixos";
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;

  # services.xserver.displayManager.defaultSession = "awesome";

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
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
      "storage"
      "audio"
      "sudo"
    ];
    packages = with pkgs; [
      awesome
    ];
  };

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    home-manager

    # Xorg
    # xorg.xdpyinfo

    # Libs
    # imlib2 # image loading and rendering library
    # lua54Packages.luarocks
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

  # Enable/Disable Options
  programs.firefox.enable = false; # Firefox
  programs.fish.enable = true; # Fish shell
  services.blueman.enable = true; # Bluetooth manager
  services.yarr.enable = true; # Yet Another RSS Reader (YARR)
  programs.niri.enable = true; # Niri

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Firewall configuration.
  networking.firewall.enable = true;
  # Open ports in the firewall.
  networking.firewall = {
    allowedTCPPorts = [
      53
      3000
      3003
      8443
    ];
    allowedUDPPorts = [
      53
      8443
    ];
  };

  # Polkit
  security.polkit.enable = true;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.05";

  # Upgrade packages automatically.
  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = false;

  # Virtualization
  virtualisation.docker.enable = true; # Install Docker
  virtualisation.docker.rootless = {
    enable = false;
    setSocketVariable = false;
  };

  # Tailscale
  services.tailscale.enable = true;
  services.tailscale.useRoutingFeatures = "both";
  networking.firewall.checkReversePath = "loose";
  networking.nameservers = [
    "100.100.100.100"
    "8.8.8.8"
    "1.1.1.1"
  ];
  networking.search = [ "tailaf1430.ts.net" ];
  /**
    * Resolved and Adguard Home listen on the same port (53).
      services.resolved = {
        enable = true;
        dnssec = "true";
        domains = [ "~." ];
        fallbackDns = [
          "1.1.1.1"
          "1.0.0.1"
        ];
        dnsovertls = "true";
      };
  */

  services.cron = {
    enable = true;
    systemCronJobs = [
      "0 */5 * * *  rwietter cd $HOME/.local/share/nap && git add . && git commit -m 'cron' && git push"
    ];
  };

  services.devmon.enable = true;
  services.gvfs.enable = true;
  services.udisks2.enable = true;

  services.atd.enable = true;
}
