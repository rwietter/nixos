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
        transparency = 10;
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

  # Optionally make picom restart after dunst if picom's fadeExclude uses dunst
  # systemd.services.picom.requires = lib.mkIf (config.services.picom.enable && config.services.picom.fadeExclude != null )  [ "dunst.service" ];

  xdg.configFile = lib.mkForce {
    "dunst/dunstrc" = {
      text = ''
        ${fileContents ../repo/config/dunst/dunstrc}
        
        frame_color = "${theme.scheme.colors.bg}"
        separator_color = "${theme.scheme.colors.altbg}"

        [urgency_low]
          background = "${theme.scheme.colors.bg}"
          foreground = "${theme.scheme.colors.primary}"
          timeout = 10

        [urgency_normal]
          background = "${theme.scheme.colors.bg}"
          foreground = "${theme.scheme.colors.primary}"
          timeout = 15

        [urgency_critical]
          background = "${theme.scheme.colors.red}"
          foreground = "${theme.scheme.colors.bg}"
          timeout = 20
      '';
    };
  };

  # xdg.configFile."dunst/dunstrc".text = ''
  #   ${fileContents ../repo/config/dunst/dunstrc}
  #     frame_color = "${theme.scheme.colors.bg}"
  #     separator_color = "${theme.scheme.colors.altbg}"

  #   [urgency_low]
  #     background = "${theme.scheme.colors.bg}"
  #     foreground = "${theme.scheme.colors.primary}"
  #     timeout = 10

  #   [urgency_normal]
  #     background = "${theme.scheme.colors.bg}"
  #     foreground = "${theme.scheme.colors.primary}"
  #     timeout = 15

  #   [urgency_critical]
  #     background = "${theme.scheme.colors.red}"
  #     foreground = "${theme.scheme.colors.bg}"
  #     timeout = 20
  # '';

  home.packages = with pkgs; [
    libnotify
  ];
}

