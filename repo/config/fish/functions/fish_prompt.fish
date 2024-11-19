function fish_prompt --description Hydro

    set --local shell_symbol
    set --local shell_color
    if set -q IN_NIX_SHELL || set -q DIRENV_DIR
        set shell_color (set_color red)
        set shell_symbol "(shell) "
    end

    echo -e "$_hydro_color_pwd$_hydro_pwd$hydro_color_normal $_hydro_color_git$$_hydro_git$hydro_color_normal$shell_color$shell_symbol$_hydro_color_duration$_hydro_cmd_duration$hydro_color_normal$_hydro_status$hydro_color_normal "
end