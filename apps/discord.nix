{
  config,
  lib,
  pkgs,
  ...
}:
{
  options = {
    discord.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable Discord browser";
    };
  };

  config = lib.mkIf config.discord.enable {
    home.packages = [
      pkgs.discord
    ];

    home.sessionVariables = {};
  };
}
