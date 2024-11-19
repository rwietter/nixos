{
  pkgs,
  config,
  lib,
  ...
}:

{
  options = {
    devenv.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable the development environment.";
    };
  };

  config = lib.mkIf config.devenv.enable {
    home.packages = [
      pkgs.devenv
    ];
  };
}
