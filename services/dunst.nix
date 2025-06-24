{
  lib,
  pkgs,
  vars,
  theme,
  ...
}:
let colors = theme.scheme.variants."${vars.appearance.theme}";
in
lib.mkIf (vars.os.desktop == "awesome" || vars.os.desktop == "i3") {
  services.dunst = {
    enable = true;
    package = pkgs.dunst;
    iconTheme = {
      package = pkgs.hicolor-icon-theme;
      name = "Hicolor";
      size = "32x32";
    };
  };

  xdg.configFile = lib.mkForce {
    # ${lib.fileContents ../repo/config/dunst/dunstrc}
    "dunst/dunstrc" = {
      text = ''
        [global]
          ## Display
          monitor = 0;
          follow = none;
          width = 250;
          height = 350;
          offset = "10x40";
          origin = "top-right";
          progress_bar = false;
          indicate_hidden = no;
          shrink = 0;
          transparency = 5;
          padding = 8;
          horizontal_padding = 8;
          separator_height = 0; # 0 - no separator
          frame_width = 1; # border width
          gap_size = 10; # space between notifications
          frame_color = "${colors.fg.root}"; 
          separator_color = "#00000000";
          sort = yes;
          idle_threshold = 120;

          ## Text
          font = "${vars.os.font.mono + " 12"}";
          line_height = 0;
          markup = full;
          format = "<b>%s</b>\n%b";

          ## Alignment and word wrap
          alignment = left;
          vertical_alignment = center;
          word_wrap = yes;

          ## Timeouts
          show_age_threshold = -1;
          ellipsize = start;

          ## Notifications
          ignore_newline = no;
          stack_duplicates = true;
          hide_duplicate_count = true;
          show_indicators = yes;

          ## Icons
          icon_position = left;
          min_icon_size = 30;
          max_icon_size = 50;
          icon_path = ~/.icons/BeautySolar/apps/scalable/

          ## History
          sticky_history = no;
          history_length = 3;

          ## Misc/Advanced
          dmenu = /usr/bin/rofi -p dunst:
          browser = /usr/bin/chromium -new-tab;
          always_run_script = true;
          title = Dunst;
          class = Dunst;
          corner_radius = 4;
          ignore_dbusclose = false;

          ## Legacy
          force_xinerama = false;

          ## mouse
          mouse_left_click = close_current;
          mouse_middle_click = do_action, close_current;
          mouse_right_click = close_all;

        [urgency_low]
          background = "${colors.bg.root}";
          foreground = "${colors.fg.root}";
          frame_color = "${colors.yellow.root}";
          timeout = 10;

        [urgency_normal]
          background = "${colors.bg.root}";
          foreground = "${colors.fg.root}";
          frame_color = "${colors.fg.root}";
          timeout = 15

        [urgency_critical]
          background = "${colors.bg.root}";
          foreground = "${colors.fg.root}";
          frame_color = "${colors.red.root}";
          timeout = 20;

        iconTheme = {
          package = "${pkgs.hicolor-icon-theme}";
          name = "Hicolor";
          size = "32x32";
        };
      '';
      onChange = ''
        systemctl --user restart dunst
      '';
    };
  };

  home.packages = [
    pkgs.libnotify
  ];
}
