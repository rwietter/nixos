{ lib, pkgs, theme, ... }:

with lib; {
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
        set default-bg "${theme.scheme.colors.bg}"
        set default-fg "${theme.scheme.colors.fg}"
        set statusbar-bg "${theme.scheme.colors.altbg}"
        set statusbar-fg "${theme.scheme.colors.fg}"
        set inputbar-bg "${theme.scheme.colors.altbg}"
        set inputbar-fg "${theme.scheme.colors.fg}"
        set notification-bg "${theme.scheme.colors.altbg}"
        set notification-fg "${theme.scheme.colors.fg}"
        set notification-error-bg "${theme.scheme.colors.red}"
        set notification-error-fg "${theme.scheme.colors.bg}"
        set notification-warning-bg "${theme.scheme.colors.yellow}"
        set notification-warning-fg "${theme.scheme.colors.bg}"

        set highlight-active-color "${theme.scheme.colors.altbg}"
        set highlight-color "rgba(229, 200, 144, 0.4)"
        set highlight-fg "${theme.scheme.colors.altbg}"

        set completion-highlight-bg "${theme.scheme.colors.altbg}"
        set completion-highlight-fg "${theme.scheme.colors.fg}"

        set completion-bg "${theme.scheme.colors.altbg}"
        set completion-fg "${theme.scheme.colors.fg}"
        set recolor true
        set recolor-keephue true
        set recolor-lightcolor "${theme.scheme.colors.bg}"
        set recolor-darkcolor "${theme.scheme.colors.white}"
        
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
        set font "JetBrainsMono Nerd Font"
        
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
        
        map [normal] i recolor
        
        map [normal] f toggle_fullscreen
        map [fullscreen] f toggle_fullscreen
        
        # Extra settings
        set render-loading true
        set scroll-step 50
      '';
    };
  };
}
