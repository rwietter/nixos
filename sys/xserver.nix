{ config, lib, pkgs, ... }:

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;
  services.xserver.displayManager.startx.enable = true;

  # Change DPI 
  services.xserver.dpi = 70;

  # Enable the XFCE Desktop Environment.
  services.xserver.displayManager.lightdm.enable = false;
  services.xserver.desktopManager.xfce.enable = false;

  services.xserver.displayManager.defaultSession = "hyprland";
  services.displayManager.sddm.enable = lib.mkDefault true;
  services.displayManager.sddm.wayland.enable = true;
  services.desktopManager.plasma6.enable = true;

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    plasma-browser-integration
    konsole
    elisa
  ];

  # services.xserver.windowManager.session = [
  #   {
  #     name = "awesome";
  #     manage = "window";
  #     start = ''
  #       export AWESOME_RC=$HOME/nixos/repo/config/awesome/rc.lua
  #       exec ${pkgs.awesome}/bin/awesome -c $HOME/nixos/repo/config/awesome/rc.lua &
  #       waitPID=$!
  #     '';
  #   }
  # ];

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "br";
    variant = "abnt2";
  };
}
