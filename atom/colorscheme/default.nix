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
  ];
}
