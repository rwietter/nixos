{
  lib,
  vars,
  pkgs,
  ...
}:

# starship - an customizable prompt for any shell
with lib;
mkIf (vars.os.prompt == "starship") {
  programs.starship = {
    enable = true;
    package = pkgs.starship;

    # custom settings
    settings = {
      add_newline = false;
      aws.disabled = true;
      gcloud.disabled = true;
      line_break.disabled = true;
    };
  };
}
