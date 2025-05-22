{ mylib, vars, ... }:

with mylib;
{
  theme = utils.match { colorscheme = vars.appearance.colorscheme or "everforest"; } [
    [
      { colorscheme = "everforest"; }
      (import ./everforest.nix)
    ]
    [
      { colorscheme = "umbrosus"; }
      (import ./umbrosus.nix)
    ]
    [
      { colorscheme = "moonstars"; }
      (import ./moonstars.nix)
    ]
    [
      { colorscheme = "catppuccin-macchiato"; }
      (import ./catppuccin-macchiato.nix)
    ]
    [
      { colorscheme = "amarena"; }
      (import ./amarena.nix)
    ]
    [
      { colorscheme = "ephemeral"; }
      (import ./ephemeral.nix)
    ]
    [
      { colorscheme = "lovelace"; }
      (import ./lovelace.nix)
    ]
    [
      { colorscheme = "manta"; }
      (import ./manta.nix)
    ]
    [
      { colorscheme = "skyall"; }
      (import ./skyall.nix)
    ]
    [
      { colorscheme = "aphelion"; }
      (import ./aphelion.nix)
    ]
    [
      { colorscheme = "hypfrost"; }
      (import ./hypfrost.nix)
    ]
  ];
}
