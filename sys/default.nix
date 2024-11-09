{ lib, pkgs, ...}:

{
  imports = [
    ./gc.nix
    ./dns.nix
  ];
}