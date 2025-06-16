-- wifi button/widget
-- ~~~~~~~~~~~~~~~~~~

-- requirements
-- ~~~~~~~~~~~~
local awful = require("awful")
local beautiful = require("beautiful")
local gears = require("gears")
local dpi = beautiful.xresources.apply_dpi
local helpers = require("helpers")
local wibox = require("wibox")
local naughty = require("naughty")

-- widgets
-- ~~~~~~~

local zram_bar = awful.widget.watch(
	"bash /home/rwietter/.config/awesome/scripts/zram.sh",
	59,
	function(wid, stdout)
		wid.value = tonumber(stdout)
	end,
	wibox.widget({
		max_value = 100,
		forced_height = dpi(2),
		forced_width = dpi(270),
		margins = {
			top = 7,
			bottom = 7,
		},
		shape = gears.shape.rounded_bar,
		border_width = 0,
		color = beautiful.accent,
		background_color = beautiful.bg_4,
		paddings = 0,
		widget = wibox.widget.progressbar,
	})
)

local zram_icon = wibox.widget({
	{
		image = beautiful.images.snow_icon,
		widget = wibox.widget.imagebox,
	},
	widget = wibox.container.background,
	forced_width = dpi(35),
	forced_height = dpi(35),
})

local zram_text = awful.widget.watch(
	"bash " .. home_var .. "/.config/awesome/scripts/zram.sh",
	59,
	function(widget, stdout)
		widget.markup = helpers.colorize_text(string.gsub(stdout, "%s+", ""), beautiful.fg_color) .. "%"
	end,
	wibox.widget({
		font = beautiful.font_var .. "13",
		widget = wibox.widget.textbox,
		valign = "right",
		align = "right",
	})
)

local zram_widget = wibox.widget({
	zram_icon,
	zram_bar,
	zram_text,
	spacing = dpi(8),
	forced_height = dpi(35),
	layout = wibox.layout.fixed.horizontal,
})

return zram_widget
