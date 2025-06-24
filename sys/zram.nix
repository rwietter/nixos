{ lib, config, ... }:

# Zram is a compressed block device in RAM. It is used to improve I/O performance.
{
  options = {
    zram.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable Zram for swap space";
    };
  };

  config = lib.mkIf config.zram.enable {
    zramSwap = {
      enable = true;
      algorithm = "zstd"; # https://search.nixos.org/options?channel=24.05&show=zramSwap.algorithm&from=0&size=50&sort=relevance&type=packages&query=zramSwap
    };
  };
}
