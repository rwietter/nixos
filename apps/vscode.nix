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
      programs.vscode = {
        enable = true;
        package = unstable.vscode;
        extensions = [
          unstable.vscode-extension-yoavbls-pretty-ts-errors
          unstable.vscode-extension-biomejs-biome
        ];
      };
    };
  };
}
