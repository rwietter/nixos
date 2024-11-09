{ lib, pkgs, vars, ...}:

with lib; mkIf (vars.os.shell == "fish") {
  programs.fish = {
    enable = true;
    package = pkgs.fish;
    shellAbbrs = {
      hlp = "command-not-found";
    };
  };
  home.packages = with pkgs; [
    fishPlugins.forgit
    fishPlugins.hydro
  ];

  # Import the fish configuration file
  # xdg.configFile."fish/config.fish".text = lib.mkForce ''
  #   ${builtins.readFile ../repo/config/fish/config.fish}
  # '';

  # xdg.configFile."fish/config.fish".text = ''
  #   ${fileContents ../repo/config/fish/config.fish}
  # '';

  # Another way to import the fish configuration file. The difference is that
  # the file is not embedded in the nix file, but is linked to the file in the
  # repository.
  
  xdg.configFile."fish/config.fish".source = lib.mkForce (builtins.path {
    path = ../repo/config/fish/config.fish;
  });

  xdg.configFile."fish/functions" = lib.mkForce({
    enable = true;
    source = ../repo/config/fish/functions;
    recursive = true;
  });
}