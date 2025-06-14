# ---------------- Settings --------------------
# ----------------------------------------------
set -g fish_greeting                           # disable fish greeting
set -g fish_history 10000                      # Increase history size
set -g fish_complete_select_descriptions yes   # Show descriptions for completions
set -g fish_complete_select_colorize yes       # Colorize completions
set -g fish_autosuggestion_enabled 1           # Enable autosuggestions


fish_vi_key_bindings                           # Enable vi key bindings
set -g fish_vi_force_cursor 1                  # Force cursor to be line
set -g fish_cursor_default line blink          # Set cursor to line and blink
set -g fish_cursor_insert line blink           # Set cursor to line and blink in insert mode
set -g fish_cursor_replace_one line blink      # Set cursor to line and blink in replace mode
set -g fish_cursor_external line blink         # Set cursor to line and blink in external mode
set -g fish_cursor_visual line blink           # Set cursor to line and blink in visual mode

# ----------------- Zellij ---------------------
# ----------------------------------------------
# if status is-interactive
#     eval (zellij setup --generate-auto-start fish | string collect)
# end

# -------------- Theme Colors ------------------
# ----------------------------------------------
# fish_config theme choose "Dracula Official"   # Set theme


# ----------------- Prompt ---------------------
# ----------------------------------------------
set --universal pure_check_for_new_release false

# ----------------- Aliases --------------------
# ----------------------------------------------
alias ls "exa --icons -l -o --group-directories-first --color=always" # ls with icons

function source_aliases
    for file in (find ~/.config/fish/functions -type f -name '*.fish')
        source $file
    end
end
source_aliases

# ------------------ Paths ---------------------
# ----------------------------------------------
set -ag fish_user_paths "$HOME"/.local/bin
set -ag fish_user_paths "$HOME"/.local/bin/rwietter
# set -ag fish_user_paths "$HOME"/.local/bin/busybox

# --------------- Environments -----------------
# ----------------------------------------------
set -gx TERM wezterm                    # Set terminal to wezterm
set -gx EDITOR code                     # Set editor to code
set -gx VISUAL code                     # Set visual editor to code
set -gx BROWSER firefox                 # Set browser to firefox
set -gx LANG pt_BR.UTF-8                # Set language to pt_BR.UTF-8
set -gx LC_ALL pt_BR.UTF-8              # Set locale to pt_BR.UTF-8
set -Ux ABBR_TIPS_PROMPT "❱ \e[38;2;243;134;48;4;1m{{ .abbr }}\e[0m => \e[38;2;189;153;255;4;1m{{ .cmd }}\e[0m"

# ----------------- Functions ------------------
# ----------------------------------------------
# function fish_mode_prompt; end # Disable fish mode prompt (vi mode)

# ------------------ Plugins -------------------
# ----------------------------------------------
# -- kidonng/zoxide.fish
zoxide init fish | source    # like cd with superpowers
set --universal zoxide_cmd z

# -- direnv
direnv hook fish | source
set -g direnv_fish_mode eval_on_arrow    # trigger direnv at prompt, and on every arrow-based directory change (default)
# set -g direnv_fish_mode eval_after_arrow # trigger direnv at prompt, and only after arrow-based directory changes before executing command
# set -g direnv_fish_mode disable_arrow    # trigger direnv at prompt only, this is similar functionality to the original behavior

# --- forgit
source "$HOME"/.config/fish/conf.d/forgit.plugin.fish

# --- Pisces
# set -U pisces_pairs $pisces_pairs '<,>' '`,`' '«,»' '+,+' '=,='

# -- patrickf1/fzf.fish
set -gx fzf_preview_dir_cmd eza --all --color=always --icons # preview directories with exa

# --------------- Abbreviations ----------------
# -- gazorby/fish-abbreviation-tips
source "$HOME"/.config/fish/plugins/abbr_tips.fish

function abbr_update_keys_and_values
     __abbr_tips_init
end

# ---------------- Keybindings -----------------
# ----------------------------------------------
bind -M insert \cb backward-kill-path-component  # For each path component, delete it
bind -M insert \cz undo                          # Undo any typed command

# -- git
# bind -M insert \cs fcp    # Ctrl + S -> git cherry-pick
# bind -M insert \ca fad    # Ctrl + A -> git add
# bind -M insert \cd fdf    # Ctrl + D -> git diff
# bind -M insert \el flo    # Alt + L -> git log

# -- zellij
bind -M insert \ea zellij toggle                 # Toggle zellij

# \c -> ctrl (case sensitive)
# \e -> esc | alt (case insensitive)

# ---------------- References ------------------
# ----------------------------------------------
# - [Fish for bash users](https://fishshell.com/docs/3.2/fish_for_bash_users.html)
# - [Zoxide](https://github.com/ajeetdsouza/zoxide)
# - [Fish Language](https://fishshell.com/docs/current/language.html)
# - [Commands](https://fishshell.com/docs/current/commands.html)
# - [Set](https://fishshell.com/docs/current/cmds/set.html)