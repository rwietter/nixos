{
  lib,
  pkgs,
  vars,
  theme,
  ...
}:

with lib;
{
  programs.zathura = {
    enable = true;
  };

  home.packages = with pkgs; [
    zathura
  ];

  xdg.configFile = lib.mkForce {
    "zathura/zathurarc" = {
      text = ''
        # Interface
        set window-title-basename true
        set statusbar-basename true
        set statusbar-home-tilde true
        set guioptions sv

        # Colors and theme
        set default-bg "${theme.scheme.variants."${vars.appearance.theme}".bg.root}"
        set default-fg "${theme.scheme.variants."${vars.appearance.theme}".fg.root}"
        set statusbar-bg "${theme.scheme.variants."${vars.appearance.theme}".bg.echo}"
        set statusbar-fg "${theme.scheme.variants."${vars.appearance.theme}".fg.echo}"
        set inputbar-bg "${theme.scheme.variants."${vars.appearance.theme}".bg.echo}"
        set inputbar-fg ${theme.scheme.variants."${vars.appearance.theme}".fg.echo}
        set notification-bg "${theme.scheme.variants."${vars.appearance.theme}".bg.shift}"
        set notification-fg "${theme.scheme.variants."${vars.appearance.theme}".fg.echo}"
        set notification-error-bg "${theme.scheme.variants."${vars.appearance.theme}".bg.echo}"
        set notification-error-fg "${theme.scheme.variants."${vars.appearance.theme}".red.root}"
        set notification-warning-bg "${theme.scheme.variants."${vars.appearance.theme}".bg.echo}"
        set notification-warning-fg "${theme.scheme.variants."${vars.appearance.theme}".yellow.shift}"

        set highlight-active-color "${theme.scheme.variants."${vars.appearance.theme}".bg.fade}"
        set highlight-color "rgba(229, 200, 144, 0.4)"
        set highlight-fg "${theme.scheme.variants."${vars.appearance.theme}".bg.fade}"

        set completion-highlight-bg "${theme.scheme.variants."${vars.appearance.theme}".bg.fade}"
        set completion-highlight-fg "${theme.scheme.variants."${vars.appearance.theme}".fg.root}"

        set completion-bg "${theme.scheme.variants."${vars.appearance.theme}".bg.fade}"
        set completion-fg "${theme.scheme.variants."${vars.appearance.theme}".fg.root}"
        set recolor true
        set recolor-keephue true
        set recolor-lightcolor "${theme.scheme.variants."${vars.appearance.theme}".bg.root}"
        set recolor-darkcolor "${theme.scheme.variants."${vars.appearance.theme}".fg.root}"

        # Behavior
        set selection-clipboard clipboard
        set pages-per-row 1
        set scroll-page-aware true
        set scroll-full-overlap 0.01
        set scroll-step 100
        set zoom-min 10
        set zoom-max 1000
        set window-title-home-tilde true
        set adjust-open "best-fit"
        set font "monospace normal 9"
        set adjust-open width
        # set guioptions none
        set statusbar-page-percent  "true"

        # Key mappings
        map <C-Tab> toggle_statusbar
        map [normal] <C-b> scroll left
        map [normal] <C-f> scroll right
        map [normal] <C-u> scroll half-up
        map [normal] <C-d> scroll half-down
        map [normal] <C-y> scroll up
        map [normal] <C-e> scroll down

        map [normal] <C-i> zoom in
        map [normal] <C-o> zoom out
        map [normal] <C-0> zoom default

        map [normal] r rotate
        map [normal] R rotate cw

        # map [normal]     h adjust_window best-fit
        # map [fullscreen] h adjust_window best-fit
        map [normal]     w adjust_window width
        map [fullscreen] w adjust_window width

        map [normal] i recolor

        map [normal] f toggle_fullscreen
        map [fullscreen] f toggle_fullscreen

        # map [fullscreen] b toggle_statusbar
        # map [normal] b toggle_statusbar
        # map <C-b> toggle_statusbar

        # Extra settings
        set render-loading true
        set scroll-step 50
      '';
    };
  };
}
