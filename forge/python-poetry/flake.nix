{
  description = "Python development environment with Poetry";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default";
  };

  outputs = { self, nixpkgs, systems }:
    let
      eachSystem = nixpkgs.lib.genAttrs (import systems);
    in
    {
      devShells = eachSystem (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          buildInputs = [
            pkgs.python3
            pkgs.poetry
            pkgs.zlib
          ];
        in
        {
          default = pkgs.mkShell {
            packages = with pkgs; [
              python312
              poetry
              openblas
              zlib
              gfortran
              libffi
            ] ++ (with pkgs.python312Packages; [
              #numpy
              #pandas
              #scipy
              #zlib
              #requests
            ]);

            shellHook = ''
              # Configure Poetry to use a virtualenv in the project directory
              export POETRY_VIRTUALENVS_IN_PROJECT="true"
              export POETRY_VIRTUALENVS_PATH="{project-dir}/.venv"
              export POETRY_VIRTUALENVS_PREFER_ACTIVE_PYTHON="true"

              # Configure LD_LIBRARY_PATH for Linux
              export LD_LIBRARY_PATH=${pkgs.lib.makeLibraryPath [
                pkgs.stdenv.cc.cc
              ]}
              export LD_LIBRARY_PATH="${pkgs.lib.makeLibraryPath buildInputs}:$LD_LIBRARY_PATH"
              export LD_LIBRARY_PATH="${pkgs.stdenv.cc.cc.lib.outPath}/lib:$LD_LIBRARY_PATH"

              # Configurar PYTHONPATH
              export PYTHONPATH=$PWD/.venv/lib/python3.12/site-packages:$PYTHONPATH

              # Activate the virtualenv if it exists
              if [ -d .venv ]; then
                source .venv/bin/activate
              fi
            '';
          };
        });
    };
}
