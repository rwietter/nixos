{
  lib,
  pkgs,
  vars,
  ...
}:

with lib;
mkIf (vars.os.desktop == "awesome") {
  services.xserver.windowManager.awesome = {
    enable = true;
    luaModules = with pkgs.luaPackages; [
      luarocks
      luadbi-mysql
    ];
    package = pkgs.awesome.overrideAttrs (old: {
      version = "1f7ac8f9c7ab9fff7dd93ab4b29514ff3580efcf";
      src = pkgs.fetchFromGitHub {
        owner = "awesomeWM";
        repo = "awesome";
        rev = "1f7ac8f9c7ab9fff7dd93ab4b29514ff3580efcf";
        hash = "sha256-D5CTo4FvGk2U3fkDHf/JL5f/O1779i92UcRpPn+lbpw=";
      };
      patches = [ ];
      postPatch = ''
        patchShebangs tests/examples/_postprocess.lua
      '';
    });
  };

  environment = {
    systemPackages = with pkgs; [
      luarocks
    ];

    sessionVariables = {
      LUA_PATH = "${pkgs.luaPackages.luarocks}/share/lua/${pkgs.lua.luaversion}/?.lua;${pkgs.luaPackages.luarocks}/share/lua/${pkgs.lua.luaversion}/?/init.lua";
      LUA_CPATH = "${pkgs.luaPackages.luarocks}/lib/lua/${pkgs.lua.luaversion}/?.so";
      PATH = [ "${pkgs.luarocks}/bin" ];
    };
  };

  services.xserver.displayManager.sessionCommands = ''
    export PATH=${pkgs.luarocks}/bin:$PATH
  '';
}
