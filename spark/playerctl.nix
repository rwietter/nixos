{
  lib,
  config,
  pkgs,
  ...
}:

{
  options = {
    playerctl.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable playerctl";
    };
  };

  config = lib.mkIf config.playerctl.enable {
    services.playerctld = {
      enable = true;
      package = pkgs.playerctl;
    };
  };
}
