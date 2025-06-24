{
  lib,
  unstable,
  config,
  ...
}:
{
  options = {
    code.enable = lib.mkOption {
      type = lib.types.bool;
      default = true;
      description = "Enable Visual Studio Code";
    };
  };

  config = {
    code.enable = lib.mkIf config.code.enable {
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
