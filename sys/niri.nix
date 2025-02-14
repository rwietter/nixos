{
  config,
  lib,
  pkgs,
  ...
}:
{
  options = {
    niri.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable Niri";
    };
  };

  config = lib.mkIf config.niri.enable {
    programs.niri = {
      enable = true;
      package = pkgs.niri;
    };
  };
}
