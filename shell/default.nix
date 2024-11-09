{ pkgs, ... }:

{
  imports = [
    ./fish.nix
    ./wezterm.nix
    ./bash.nix
    ./alacritty.nix
    ./starship.nix
    # ./zsh.nix
  ];
}