{ mylib, vars, ... }:

with mylib;
{
  theme = utils.match { colorscheme = vars.appearance.colorscheme or "twilight"; } [
    [
      { colorscheme = "twilight"; }
      (import ./twilight.nix)
    ]
    [
      { colorscheme = "umbrosus"; }
      (import ./umbrosus.nix)
    ]
  ];
}
