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

local tile = awful.layout.suit.tile -- default tiling layout, where main window is on the left and all other windows are on the right
local tilebottom = awful.layout.suit.tile.bottom -- similar to tile, but window are stacked horizontally at the bottom of the screen
local titleFloating = awful.layout.suit.floating -- floating layout, where windows can be moved and resized freely
local fair = awful.layout.suit.fair -- fair layout, where windows are arranged in a fair manner
local spiral = awful.layout.suit.spiral -- spiral layout, where windows are arranged in a spiral pattern
local horizontal = awful.layout.suit.fair.horizontal -- horizontal fair layout, where windows are arranged in a fair manner horizontally
local vertical = awful.layout.suit.fair.vertical -- vertical fair layout, where windows are arranged in a fair manner vertically

-- layout machi  
lmachi.editor.nested_layouts = {
	[""] = tile,
	[""] = vertical,
	[""] = horizontal,
	[""] = fair,
	[""] = spiral,
	[""] = deck,
}

-- names/numbers of layouts
local names = { "", "", "", "", "", "" }

-- Configurations
-- **************

tag.connect_signal(
	"request::default_layouts",
	function()
		awful.layout.append_default_layouts({
			tile, -- default (vertical)
			tilebottom, -- stack (horizontal)
			titleFloating, -- floating layout
			lmachi.default_layout, -- layout machi
			equal, -- layout equalarea (bling)
			mstab, -- layout mstab (bling) like a tabbed browser
			deck -- layout deck (bling) like a deck of cards
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
		-- awful.tag(names, s, awful.layout.layouts[1])
		awful.tag(names, s, tile) -- layout padrão horizontal
	end
)
