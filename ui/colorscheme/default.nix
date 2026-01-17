{ mylib, vars, ... }:

with mylib;
{
  theme = utils.match { colorscheme = vars.appearance.colorscheme or "eink"; } [
    [
      { colorscheme = "everforest"; }
      (import ./everforest.nix)
    ]
    [
      { colorscheme = "hypfrost"; }
      (import ./hypfrost.nix)
    ]
    [
      { colorscheme = "eink"; }
      (import ./eink.nix)
    ]
		[
			{ colorscheme = "zen"; }
			(import ./zen.nix)
		]
		[
			{ colorscheme = "monochrome"; }
			(import ./monochrome.nix)
		]
  ];
}
