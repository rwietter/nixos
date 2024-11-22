{ mylib, vars, ... }:

with mylib;
{
  theme = utils.match { colorscheme = vars.appearance.colorscheme or "vesper"; } [
    [
      { colorscheme = "argentinian"; }
      (import ./argentinian.nix)
    ]
    [
      { colorscheme = "catppuccin-mocha"; }
      (import ./catppuccin-mocha.nix)
    ]
  ];
}
