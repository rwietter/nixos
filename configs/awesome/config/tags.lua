-- tags  / layouts
-- ~~~~~~~~~~~~~~~
-- requirements
-- ~~~~~~~~~~~~
local awful = require("awful")
local lmachi = require("mods.layout-machi")
local bling = require("mods.bling")
-- misc/vars
-- ~~~~~~~~~
-- bling layouts
local mstab = bling.layout.mstab
local equal = bling.layout.equalarea
local deck = bling.layout.deck
-- layout machi  
lmachi.editor.nested_layouts = {
	[""] = awful.layout.suit.magnifier,
	[""] = awful.layout.suit.magnifier,
	[""] = awful.layout.suit.magnifier,
	[""] = awful.layout.suit.magnifier,
}
-- names/numbers of layouts
local names = { "", "", "", "" }
local l = awful.layout.suit
-- Configurations
-- **************
-- default tags
tag.connect_signal(
	"request::default_layouts",
	function()
		awful.layout.append_default_layouts({
			l.tile,
			awful.layout.suit.magnifier,
			awful.layout.suit.max.fullscreen,
			l.floating,
			-- deck,
			-- awful.layout.suit.spiral.dwindle,
			-- lmachi.default_layout,
			-- equal,
			-- mstab,
			-- awful.layout.suit.tile.left,
			-- awful.layout.suit.tile.top,
			-- awful.layout.suit.fair,
			-- awful.layout.suit.max,
			-- awful.layout.suit.corner.nw,
		})
	end
)
-- set tags
screen.connect_signal(
	"request::desktop_decoration",
	function(s)
		screen[s].padding = {
			left = 0,
			right = 0,
			top = 0,
			bottom = 0
		}
		awful.tag(names, s, awful.layout.layouts[1])
		-- awful.tag(names, s, awful.layout.layouts[1])
	end
)
	
