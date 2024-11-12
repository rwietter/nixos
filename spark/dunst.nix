{ lib, pkgs, vars, theme, ... }:

with lib; mkIf (vars.os.desktop == "awesome" || vars.os.desktop == "i3") {
  services.dunst = {
    enable = true;
    package = pkgs.dunst;

    settings = {
      global = {
        font = vars.os.font.mono + " 12";
        width = 350;
        height = 350;
        offset = "30x50";
        origin = "top-right";
        transparency = 0;
        frame_color = "#eceff1";
        padding = 10;

        # Find icons in hicolor theme (make sure it's installed)
        # icon_path = lib.mkForce "/nix/store/a4k7hh29j511am2b97y4zv40h53m60f3-hicolor-icon-theme-0.17/share/icons/hicolor"; # Update if needed
      };

      shortcuts = {
        close = "C-space";
        close_all = "C-S-space";
        history = "C-grave";
        context = "C-Menu"; # Or "C-Super-space"
      };
    };

    iconTheme = {
      package = pkgs.hicolor-icon-theme;
      name = "Hicolor";
      size = "32x32";
    };
  };

  xdg.configFile = lib.mkForce {
    "dunst/dunstrc" = {
      text = ''
        ${fileContents ../repo/config/dunst/dunstrc}
        
        frame_color = "#00000000"
        separator_color = "#00000000"

        [urgency_low]
          background = "${theme.scheme.variants."${vars.appearance.theme}".cyan.shift}"
          foreground = "${theme.scheme.variants."${vars.appearance.theme}".black.shift}"
          timeout = 10

        [urgency_normal]
          background = "${theme.scheme.variants."${vars.appearance.theme}".bg.root}"
          foreground = "${theme.scheme.variants."${vars.appearance.theme}".fg.shift}"
          timeout = 15

        [urgency_critical]
          background = "${theme.scheme.variants."${vars.appearance.theme}".red.shift}"
          foreground = "${theme.scheme.variants."${vars.appearance.theme}".black.root}"
          timeout = 20
      '';
      onChange = ''
        systemctl --user restart dunst
      '';
    };
  };

  home.packages = with pkgs; [
    libnotify
  ];
}

