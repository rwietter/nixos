{
  lib,
  pkgs,
  unstable,
  config,
  ...
}:
{
  options = {
    vscode.enable = lib.mkOption {
      type = lib.types.bool;
      default = false;
      description = "Enable Visual Studio Code";
    };
  };

  config = {
    vscode.enable = lib.mkIf config.vscode.enable {
      programas.vscode = {
        enable = true;
        package = pkgs.vscode;
        extensions = [
          pkgs.vscode-extension-yoavbls-pretty-ts-errors
          pkgs.vscode-extension-biomejs-biome
        ];
      };
    };
  };
}
