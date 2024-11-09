{ lib, vars, pkgs, ...}:

with lib; {
  programs.git = {
    enable = true;
    userName = vars.git.fullname;
    userEmail = vars.git.email;
    extraConfig = {
    init.defaultBranch = "main";
    safe.directory = [ ("/home/" + vars.os.hostname + "/flakies")
                      ("/home/" + vars.os.hostname + "/flakies/.git") ];
    };
  };

  home.packages = with pkgs; [
    git
    github-cli
  ];

  home.file.".gitconfig".text = ''
    ${fileContents ../repo/.gitconfig}
  '';
}