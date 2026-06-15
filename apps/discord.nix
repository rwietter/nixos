{
  config,
  lib,
  pkgs,
  ...
}:
{
  options = {
    rw.discord.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable Discord browser";
    };
  };

  config = lib.mkIf config.rw.discord.enable {
    home.packages = [
      pkgs.discord
    ];

    home.sessionVariables = {};
  };
}
