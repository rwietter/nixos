{
  lib,
  vars,
  pkgs,
  ...
}:

lib.mkIf (vars.os.prompt == "starship") {
  programs.starship = {
    enable = true;
    package = pkgs.starship;

    settings = {
      add_newline = false;
      aws.disabled = true;
      gcloud.disabled = true;
      line_break.disabled = true;
    };
  };
}
