{ theme, ... }:

{
  programs.zathura = {
    enable = true;
    extraConfig = ''
      set selection-clipboard clipboard
      set window-title-home-tilde true
      set statusbar-home-tilde true
      set adjust-open "best-fit"

      set font "JetBrainsMono Nerd Font"

      set adjust-open width
      set recolor true
      set recolor-keephue true
      map <C-Tab> toggle_statusbar
      set guioptions ""

      set recolor-lightcolor rgba(0,0,0,0.2)
      set recolor-darkcolor "${theme.scheme.colors.white}"

      set default-bg rgba(0,0,0,0.4)
      set default-fg "${theme.scheme.colors.white}"
      
      set highlight-active-color "${theme.scheme.colors.bg}"
      set highlight-color "${theme.scheme.colors.white}"
    '';
  };
}


# { lib, vars, theme, pkgs, config, ... }:

# with lib; {
#   programs.zathura = {
#     enable = true;
#   };

#   home.packages = with pkgs; [
#     zathura
#   ];

#   xdg.configFile = lib.mkForce {
#     "zathura/zathurarc" = {
#       text = ''
#         # Interface
#         set window-title-basename true
#         set statusbar-basename true
#         set statusbar-home-tilde true
#         set guioptions sv
        
#         # Colors and theme
#         set default-bg "#1a1b26"
#         set default-fg "#c0caf5"
#         set statusbar-bg "#24283b"
#         set statusbar-fg "#c0caf5"
#         set inputbar-bg "#1a1b26"
#         set inputbar-fg "#c0caf5"
#         set notification-bg "#1a1b26"
#         set notification-fg "#c0caf5"
#         set notification-error-bg "#f7768e"
#         set notification-error-fg "#1a1b26"
#         set notification-warning-bg "#e0af68"
#         set notification-warning-fg "#1a1b26"
#         set highlight-color "#e0af68"
#         set highlight-active-color "#9ece6a"
#         set completion-bg "#24283b"
#         set completion-fg "#c0caf5"
#         set completion-highlight-bg "#414868"
#         set completion-highlight-fg "#c0caf5"
#         set recolor true
#         set recolor-lightcolor "#1a1b26"
#         set recolor-darkcolor "#c0caf5"
        
#         # Behavior
#         set selection-clipboard clipboard
#         set adjust-open best-fit
#         set pages-per-row 1
#         set scroll-page-aware true
#         set scroll-full-overlap 0.01
#         set scroll-step 100
#         set zoom-min 10
#         set zoom-max 1000
        
#         # Key mappings
#         map [normal] <C-b> scroll left
#         map [normal] <C-f> scroll right
#         map [normal] <C-u> scroll half-up
#         map [normal] <C-d> scroll half-down
#         map [normal] <C-y> scroll up
#         map [normal] <C-e> scroll down
        
#         map [normal] <C-i> zoom in
#         map [normal] <C-o> zoom out
#         map [normal] <C-0> zoom default
        
#         map [normal] r rotate
#         map [normal] R rotate cw
        
#         map [normal] i recolor
        
#         map [normal] f toggle_fullscreen
#         map [fullscreen] f toggle_fullscreen
        
#         # Extra settings
#         set sandbox none
#         set render-loading true
#         set scroll-step 50
#         set smooth-scroll true
#       '';
#     };
#   };
# }