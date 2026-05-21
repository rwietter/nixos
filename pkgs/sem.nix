{ pkgs }:

pkgs.stdenv.mkDerivation {
  pname = "sem";
  version = "0.3.19";

  src = pkgs.fetchurl {
    url = "https://github.com/Ataraxy-Labs/sem/releases/download/v0.3.19/sem-linux-x86_64.tar.gz";
    sha256 = "sha256-34TaNOaayqRs3DGLp6gKwR14jEH0FbHAHSoW9Kk3YJ8=";  # sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=";

  };

  dontUnpack = true;

  nativeBuildInputs = [ pkgs.autoPatchelfHook ];

  buildInputs = [
    pkgs.openssl
    pkgs.zlib
    pkgs.stdenv.cc.cc.lib
  ];

  installPhase = ''
    mkdir -p $out/bin
    tar -xzf $src
    cp sem $out/bin/
    chmod +x $out/bin/sem
  '';
}
