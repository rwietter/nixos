{ lib, vars, ... }:

with lib; mkIf (vars.os.term == "alacritty") {
  # alacritty - a cross-platform, GPU-accelerated terminal emulator
  programs.alacritty = {
    enable = true;
    # custom settings
    settings = {
      env.TERM = "xterm-256color";
      font = {
        size = 12;
        draw_bold_text_with_bright_colors = true;
      };
      scrolling.multiplier = 5;
      selection.save_to_clipboard = true;
    };
  };

  # Import the alacritty configuration file
  # xdg.configFile."alacritty/alacritty.yml".text = ''
  #   ${fileContents ../repo/config/alacritty/alacritty.yml}
  # '';

  xdg.configFile."alacritty/alacritty.yml".source = lib.mkForce (builtins.path {
      path = ../repo/config/alacritty/alacritty.yml;
  });
}