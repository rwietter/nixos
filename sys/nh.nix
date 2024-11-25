{
  pkgs,
  vars,
  ...
}:

{
  programs.nh = {
    enable = true;
    package = pkgs.nh;
    clean.extraArgs = "--keep-since 4d --keep 3"; # Options given to nh clean when the service is run automatically.
    flake = vars.os.homeDirectory + "/" + vars.os.hostname + "/Voltage"; # The path that will be used for the FLAKE environment variable.
    clean = {
      enable = true;
      dates = "weekly"; # Dates to clean up to.
    };
  };
}
