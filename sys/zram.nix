_:

# Zram is a compressed block device in RAM. It is used to improve I/O performance.

{
  zramSwap = {
    enable = true;
    algorithm = "zstd"; # https://search.nixos.org/options?channel=24.05&show=zramSwap.algorithm&from=0&size=50&sort=relevance&type=packages&query=zramSwap
  };
}