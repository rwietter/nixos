{
  lib,
  vars,
  pkgs,
  ...
}:

with lib;
{
  programs.git = {
    enable = true;
    userName = vars.git.fullname;
    userEmail = vars.git.email;
  };

  programs.git-worktree-switcher.enable = true;

  home.packages = with pkgs; [
    git
    github-cli
  ];

  home.file.".gitconfig".text = ''
    ${fileContents ../repo/.gitconfig}
  '';
}
