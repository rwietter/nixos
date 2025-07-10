{
  pkgs,
  config,
  lib,
  ...
}:

{
  options = {
    tmux.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable tmux support";
      example = true;
    };
  };

  config = lib.mkIf config.tmux.enable {
    programs.tmux = {
      enable = true;
      clock24 = true;
      shell = "${pkgs.fish}/bin/fish";
      plugins = with pkgs; [
				tmuxPlugins.cpu
				{
					plugin = tmuxPlugins.resurrect;
					extraConfig = "set -g @resurrect-strategy-nvim 'session'";
				}
				{
					plugin = tmuxPlugins.continuum;
					extraConfig = ''
						set -g @continuum-restore 'on'
						set -g @continuum-save-interval '60' # minutes
					'';
				}
			];
			package = pkgs.tmux;
      extraConfig = ''

      '';
    };

		home.file.".tmux.conf".text = lib.mkForce ''
			# remap prefix from 'C-b' to 'C-a'
			unbind C-b
			set-option -g prefix C-a
			bind-key C-a send-prefix

			# reload config file (change file location to your the tmux.conf you want to use)
			bind r source-file ~/.tmux.conf

			# switch panes using Alt-arrow (M-Meta/Alt) without prefix
			bind -n M-Left select-pane -L
			bind -n M-Right select-pane -R
			bind -n M-Up select-pane -U
			bind -n M-Down select-pane -D

			# Set the default terminal type
			set -g default-terminal "screen-256color"

			# Enable mouse support
			set -g mouse on

			# Set history limit
			set -g history-limit 10000

			# Optional: Set a custom status bar
			set -g status-left '#[fg=green]#H #[fg=yellow]#(whoami) #[fg=blue]%Y-%m-%d %H:%M'

			# key bindings
			unbind c
			unbind "&"

			# split panes using | and -
			bind v split-window -h -c "#{pane_current_path}"
			bind h split-window -v -c "#{pane_current_path}"
			unbind '"'
			unbind %

			# New window: [Prefix] + n
			bind-key n new-window

			# List windows: [Prefix] + l
			bind-key l list-windows

			# Close current window: [Prefix] + d
			bind-key d kill-window

			# Resize
			bind-key -r C-Up resize-pane -U 5
			bind-key -r C-Down resize-pane -D 5
			bind-key -r C-Left resize-pane -L 5
			bind-key -r C-Right resize-pane -R 5

			# DESIGN TWEAKS

			# don't do anything when a 'bell' rings
			set -g visual-activity off
			set -g visual-bell off
			set -g visual-silence off
			setw -g monitor-activity off
			set -g bell-action none

			# clock mode
			setw -g clock-mode-colour yellow

			# copy mode
			setw -g mode-style 'fg=black bg=red bold'

			# panes
			set -g pane-border-style 'fg=red'
			set -g pane-active-border-style 'fg=yellow'

			# statusbar
			set -g status-position bottom
			set -g status-justify left
			set -g status-style 'fg=red'

			set -g status-left ""
			set -g status-left-length 10

			set -g status-right-style 'fg=black bg=yellow'
			set -g status-right '%Y-%m-%d %H:%M '
			set -g status-right-length 50

			setw -g window-status-current-style 'fg=black bg=red'
			setw -g window-status-current-format ' #I #W #F '

			setw -g window-status-style 'fg=red bg=black'
			setw -g window-status-format ' #I #[fg=white]#W #[fg=yellow]#F '

			setw -g window-status-bell-style 'fg=yellow bg=red bold'

			# messages
			set -g message-style 'fg=yellow bg=red bold'
		'';
  };
}

# You must restart tmux for the changes to take effect. `tmux kill-server`
# Open tmux with fish keybinding: `Alt + a`

# [Prefix] + [q] : show number of panes in the current window, you can press the number to switch to that pane
# [Prefix] + [d] : close the current window
# [Prefix] + [l] : list windows
# [Prefix] + [n] : create a new window
# [Prefix] + [^number] : switch to that window
# [Prefix] + [h] : split the current pane horizontally
# [Prefix] + [v] : split the current pane vertically
# [Alt] + [arrow keys] : switch between panes
# with [Prefix] pressed + [arrow keys] : resize the current pane
