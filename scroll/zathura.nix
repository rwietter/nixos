{ lib, vars, theme, pkgs, config, ... }:

{
  programs.zathura = {
    enable = true;
    options = {
      window-title-basename = true;
      statusbar-basename = true;
      statusbar-home-tilde = true;
      guioptions = "sv"; # Displaing statusbar (s) and scrollbar (v)
      
      # Theme and colors
      default-bg = "#1a1b26";
      default-fg = "#c0caf5";
      statusbar-bg = "#24283b";
      statusbar-fg = "#c0caf5";
      inputbar-bg = "#1a1b26";
      inputbar-fg = "#c0caf5";
      notification-bg = "#1a1b26";
      notification-fg = "#c0caf5";
      notification-error-bg = "#f7768e";
      notification-error-fg = "#1a1b26";
      notification-warning-bg = "#e0af68";
      notification-warning-fg = "#1a1b26";
      highlight-color = "#e0af68";
      highlight-active-color = "#9ece6a";
      completion-bg = "#24283b";
      completion-fg = "#c0caf5";
      completion-highlight-bg = "#414868";
      completion-highlight-fg = "#c0caf5";
      recolor = true;
      recolor-lightcolor = "#1a1b26";
      recolor-darkcolor = "#c0caf5";
      
      # Behavior
      selection-clipboard = "clipboard";
      adjust-open = "best-fit";
      pages-per-row = 1;
      scroll-page-aware = true;
      scroll-full-overlap = 0.01;
      scroll-step = 100;
      zoom-min = 10;
      zoom-max = 1000;
    };
    
    mappings = {
      # Navigation
      "[normal] <C-b>" = "scroll left";
      "[normal] <C-f>" = "scroll right";
      "[normal] <C-u>" = "scroll half-up";
      "[normal] <C-d>" = "scroll half-down";
      "[normal] <C-y>" = "scroll up";
      "[normal] <C-e>" = "scroll down";
      
      # Zoom
      "[normal] <C-i>" = "zoom in";
      "[normal] <C-o>" = "zoom out";
      "[normal] <C-0>" = "zoom default";
      
      # Rotate
      "[normal] r" = "rotate";
      "[normal] R" = "rotate cw";
      
      # Recolor
      "[normal] i" = "recolor";
      
      # Fullscreen toggle
      "[normal] f" = "toggle_fullscreen";
      "[fullscreen] f" = "toggle_fullscreen";
    };
    
    # Disable sandboxing
    # Render pages while loading
    # Scroll step size
    # Smooth scrolling
    extraConfig = ''
      set sandbox none 
      set render-loading true
      set scroll-step 50
      set smooth-scroll true
    '';
  };
}