{
  lib,
  pkgs,
  vars,
  ...
}:

let
  promptConfigs = {
    starship = {
      init = "starship init fish | source";
      packages = [ pkgs.starship ];
    };
    hydro = {
      init = ''
        set -g hydro_fetch true
        set -g hydro_multiline false
        # set -g hydro_symbol_git_dirty " "
      '';
      packages = [ pkgs.fishPlugins.hydro ];
    };
    powerline = {
      init = "powerline-setup";
      packages = [ pkgs.powerline ];
    };
    default = {
      init = ''
        set - g hydro_fetch true
        set - g hydro_multiline false
      '';
      packages = [ pkgs.fishPlugins.hydro ];
    };
  };

  promptConfig = promptConfigs.${vars.os.prompt} or promptConfigs.default;

  basePackages = [
    pkgs.fishPlugins.forgit
    pkgs.fishPlugins.fzf-fish
    pkgs.fishPlugins.sponge
    pkgs.fishPlugins.puffer
    # pkgs.fishPlugins.pisces # bug :: adds fzf completion
    pkgs.fishPlugins.async-prompt
  ];

in

lib.mkIf (vars.os.shell == "fish") {
  programs.fish = {
    enable = true;
    package = pkgs.fish;
    interactiveShellInit = '''';
  };

  home.packages = basePackages ++ promptConfig.packages;

  xdg.configFile = lib.mkForce {
    "fish/config.fish" = {
      text = ''
        ${lib.fileContents ../repo/config/fish/config.fish}

        # Prompt
        ${promptConfig.init}
      '';
    };
    "fish/functions" = {
      source = ../repo/config/fish/functions;
      recursive = true;
    };
  };
}
