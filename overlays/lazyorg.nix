{
  pkgs ? import <nixpkgs> { },
}:

# nix-prefetch-git https://github.com/HubertBel/lazyorg
pkgs.buildGoModule {
  pname = "lazyorg";
  version = "1.0.1";

  src = pkgs.fetchFromGitHub {
    owner = "HubertBel";
    repo = "lazyorg";
    rev = "076c90f97274fe0cb881a95a7f5c2b85e47b6db5";
    sha256 = "0sk0fgv28bqf1cia3fczvkmf13nim9s5fw09xqqjrm2m80szyyqa";
  };

  vendorHash = "sha256-dOS74bBNo0AvZ8bnUMHsJp/rkrdnhYNtaqWFDbOwtzg=";

  subPackages = [ "cmd/lazyorg" ];

  meta = with pkgs.lib; {
    description = "A simple terminal-based calendar and note-taking application.";
    homepage = "https://github.com/HubertBel/lazyorg";
    license = licenses.mit;
    maintainers = [ "HubertBel" ];
  };
}
