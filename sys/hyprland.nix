{
  lib,
  config,
  ...
}:

{
  options = {
    hyprland.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable Hyprland as the window manager";
    };
  };

  config = lib.mkIf config.hyprland.enable {
    programs.hyprland = {
      enable = true;
      xwayland.enable = true;
    };
  };
}
