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
    pkgs.fishPlugins.forgit # git aliases
    pkgs.fishPlugins.fzf-fish # fzf
    # pkgs.fishPlugins.sponge
    pkgs.fishPlugins.puffer
    # pkgs.fishPlugins.pisces # bug :: adds fzf completion
    # pkgs.fishPlugins.async-prompt
  ];

in

lib.mkIf (vars.os.shell == "fish") {
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
  # home.activation = {
  #   installFisherPluginManager = lib.hm.dag.entryAfter ["writeBoundary"] ''
  #     echo "Running post-installation script for Fish plugins..."

  #     echo "Installing Fisher plugin manager..."
  #     # Baixa o script de instalação do Fisher para um arquivo temporário
  #     # Usamos pkgs.coreutils para mktemp e rm para garantir que estejam disponíveis
  #     FISHER_INSTALLER=$(${pkgs.coreutils}/bin/mktemp)
  #     ${pkgs.curl}/bin/curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish > "$FISHER_INSTALLER"

  #     # Executa o script de instalação usando fish, e em seguida já instala o plugin do fisher.
  #     # O comando 'source' precisa ser executado dentro de um shell fish.
  #     # Encadeamos o comando 'fisher install' para garantir que ele rode logo após Fisher ser carregado.
  #     ${pkgs.fish}/bin/fish -c "source \"$FISHER_INSTALLER\" && fisher install jorgebucaran/fisher" || {
  #       echo "Error installing Fisher or its self-plugin. Check logs." >&2
  #       ${pkgs.coreutils}/bin/rm -f "$FISHER_INSTALLER"
  #       exit 1
  #     }
  #     ${pkgs.coreutils}/bin/rm -f "$FISHER_INSTALLER"
  #     echo "Fisher installed successfully."
  #     echo "Fish plugin setup complete."
  #   '';
  # };
}
