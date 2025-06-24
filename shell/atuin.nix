{
  lib,
  config,
  pkgs,
  ...
}:

{
  options = {
    atuin.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable Atuin shell history manager";
    };
  };

  config = lib.mkIf config.atuin.enable {
    programs.atuin = {
      enable = true;
      package = pkgs.atuin;
      enableFishIntegration = true;
    };
  };
}
