{ lib, config, pkgs, ...}: {
  options = {
    nil.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable nil (A Nix Language Server)";
    };
  };

  config = lib.mkIf config.nil.enable {
    home.packages = [
      pkgs.nil
    ];
  };
}