{ lib, ... }:

{
  imports = [
    ./compositor.nix
    ./dunst.nix
    ./espanso.nix
  ];
}