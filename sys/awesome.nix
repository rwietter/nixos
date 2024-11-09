{ lib, pkgs, vars, ... }:

with lib; mkIf(vars.os.desktop == "awesome") {
  # Use tarball for awesome because widgets needs lua modules only available in in awesome-git
  # Here <https://docs.windswept.digital/nixos/awesomewm-git>
  services.xserver.windowManager.awesome = {
    enable = true;
    luaModules = with pkgs.luaPackages; [
      luarocks # is the package manager for Lua modules
      luadbi-mysql # Database abstraction layer
    ];
    package = pkgs.awesome.overrideAttrs (old: {
      version = "1f7ac8f9c7ab9fff7dd93ab4b29514ff3580efcf";
      src = pkgs.fetchFromGitHub {
        owner = "awesomeWM";
        repo = "awesome";
        rev = "1f7ac8f9c7ab9fff7dd93ab4b29514ff3580efcf";
        hash = "sha256-D5CTo4FvGk2U3fkDHf/JL5f/O1779i92UcRpPn+lbpw=";
      };
      patches = [];
      postPatch = ''
        patchShebangs tests/examples/_postprocess.lua
      '';
    });
  };
}