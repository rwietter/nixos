{
  lib,
  pkgs,
  vars,
  config,
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
    pkgs.fishPlugins.forgit # git aliases
    pkgs.fishPlugins.fzf-fish # fzf
    # pkgs.fishPlugins.sponge
    pkgs.fishPlugins.puffer
    # pkgs.fishPlugins.pisces # bug :: adds fzf completion
    # pkgs.fishPlugins.async-prompt
  ];

in

{
  options = {
    fish.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable Fish shell";
    };
  };

  config = lib.mkIf config.fish.enable {
    programs.fish = {
      enable = true;
      package = pkgs.fish;
    };

    home.packages = basePackages ++ promptConfig.packages;

    xdg.configFile = lib.mkForce {
      "fish" = {
        source = ../repo/config/fish;
        recursive = true;
        force = true;
      };
    };
  };
}
