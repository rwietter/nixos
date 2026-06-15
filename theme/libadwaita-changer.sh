#!/usr/bin/env bash
set -euo pipefail
shopt -s nullglob

CONFIG_DIR="${XDG_CONFIG_HOME:-$HOME/.config}"
THEMES_DIR="$HOME/.themes"
GTK4_DIR="$CONFIG_DIR/gtk-4.0"

remove_override() {
    local path="$1"

    if [[ -L "$path" || -f "$path" ]]; then
        rm -f -- "$path"
    elif [[ -d "$path" ]]; then
        printf 'Skipping real directory: %s\n' "$path"
    fi
}

reset_theme() {
    printf '\n***\nResetting theme to default!\n***\n'

    remove_override "$GTK4_DIR/gtk.css"
    remove_override "$GTK4_DIR/gtk-dark.css"
    remove_override "$GTK4_DIR/assets"
    remove_override "$CONFIG_DIR/assets"
}

install_theme() {
    local theme_path="$1"
    local theme_name
    theme_name="$(basename "$theme_path")"

    local src_gtk_css="$theme_path/gtk-4.0/gtk.css"
    local src_gtk_dark_css="$theme_path/gtk-4.0/gtk-dark.css"
    local src_gtk_assets="$theme_path/gtk-4.0/assets"
    local src_assets="$theme_path/assets"

    if [[ ! -f "$src_gtk_css" ]]; then
        printf 'Theme "%s" does not contain gtk-4.0/gtk.css\n' "$theme_name" >&2
        exit 1
    fi

    mkdir -p -- "$GTK4_DIR"

    printf '\n***\nChosen theme: %s\n***\n' "$theme_name"
    printf 'Removing previous theme...\n'

    reset_theme

    printf 'Installing new theme...\n'

    ln -s -- "$src_gtk_css" "$GTK4_DIR/gtk.css"

    if [[ -f "$src_gtk_dark_css" ]]; then
        ln -s -- "$src_gtk_dark_css" "$GTK4_DIR/gtk-dark.css"
    fi

    if [[ -d "$src_gtk_assets" ]]; then
        ln -s -- "$src_gtk_assets" "$GTK4_DIR/assets"
    fi

    if [[ -d "$src_assets" ]]; then
        ln -s -- "$src_assets" "$CONFIG_DIR/assets"
    fi

    printf 'Done.\n'
}

if [[ "${1:-}" == "--reset" ]]; then
    reset_theme
    exit 0
fi

themes=( "$THEMES_DIR"/* )

if (( ${#themes[@]} == 0 )); then
    printf 'No themes found in %s\n' "$THEMES_DIR" >&2
    exit 1
fi

printf 'Select theme:\n'

select theme in "${themes[@]}" "Exit"; do
    if [[ "$theme" == "Exit" ]]; then
        printf 'Bye bye!\n'
        exit 0
    fi

    if [[ -n "${theme:-}" && -d "$theme" ]]; then
        install_theme "$theme"
        exit 0
    fi

    printf 'Incorrect value. Please try again.\n'
done
