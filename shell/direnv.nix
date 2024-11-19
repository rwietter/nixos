{
  lib,
  config,
  pkgs,
  ...
}:

{
  options = {
    direnv.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable direnv";
    };
  };

  config = lib.mkIf config.direnv.enable {
    programs.direnv = {
      enable = true;
      enableFishIntegration = true;
      package = pkgs.direnv;
      nix-direnv = {
        enable = true;
        package = pkgs.nix-direnv;
      };
    };
  };
}
