{ lib, config, ... }:
{

  options = {
    blueman.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable Blueman";
    };
  };
  config = lib.mkIf config.blueman.enable {
    services.blueman = {
      enable = true;
    };
  };
}
