{ lib, pkgs, ...}:

{
  imports = [
    ./gc.nix
    ./dns.nix
    ./nix.nix
    ./xserver.nix
    ./hyprland.nix
    ./awesome.nix
  ];
}