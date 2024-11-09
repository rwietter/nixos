{ lib, vars, pkgs, ...}:

with lib; mkIf (vars.os.shell == "bash") {
  programs.bash = {
    enable = true;
    enableCompletion = false;
    # interactiveShellInit = ''
    #   if [[ $(${pkgs.procps}/bin/ps --no-header --pid=$PPID --format=comm) != "fish" && -z ''${BASH_EXECUTION_STRING} ]]
    #   then
    #     shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=""
    #     exec ${pkgs.fish}/bin/fish $LOGIN_OPTION
    #   fi
    # '';
    bashrcExtra = ''
      export PATH="$PATH:$HOME/bin:$HOME/.local/bin:$HOME/go/bin"
    '';
    shellAliases = {};
  };

  # Import the bash configuration file
  # xdg.configFile.".bashrc".text = ''
  #   ${fileContents ../repo/config/bash/.bashrc}
  # '';
  
  # home.file."fish/config.fish".source = lib.mkForce (builtins.path {
  #   path = ../repo/config/bash/.bashrc;
  # });
}