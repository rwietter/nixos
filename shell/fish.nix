{ lib, pkgs, vars, theme, ...}:

with lib; mkIf (vars.os.shell == "fish") {
  programs.fish = {
    enable = true;
    package = pkgs.fish;

    # Fish integration for nix shell or nix develop
    interactiveShellInit = ''
      ${pkgs.any-nix-shell}/bin/any-nix-shell fish --info-right | source
    '';
  };

  home.packages = with pkgs; [
    fishPlugins.forgit
    fishPlugins.hydro
  ];

  xdg.configFile = mkForce {
    "fish/config.fish" = {
      source = ../repo/config/fish/config.fish;
    };
    "fish/functions" = {
      source = ../repo/config/fish/functions;
      recursive = true;
    };
  };
}