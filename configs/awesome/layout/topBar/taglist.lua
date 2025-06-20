-- Taglist widget
-- ~~~~~~~~~~~~~~
-- requirements
-- ~~~~~~~~~~~~
local awful = require("awful")
local gears = require("gears")
local wibox = require("wibox")
local beautiful = require("beautiful")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

-- default modkey
local modkey = "Mod4"

local get_taglist = function(s)
	-- Taglist buttons
	local taglist_buttons = gears.table.join(
		awful.button({}, 1, function(t)
			t:view_only()
		end),
		awful.button({ modkey }, 1, function(t)
			if client.focus then
				client.focus:move_to_tag(t)
			end
		end),
		awful.button({}, 3, awful.tag.viewtoggle),
		awful.button({ modkey }, 3, function(t)
			if client.focus then
				client.focus:toggle_tag(t)
			end
		end),
		awful.button({}, 4, function(t)
			awful.tag.viewnext(t.screen)
		end),
		awful.button({}, 5, function(t)
			awful.tag.viewprev(t.screen)
		end)
	)

	small_rounded_border_shape = function(cr, width, height)
		gears.shape.rounded_rect(cr, width, height, dpi(8))
	end

	local the_taglist = awful.widget.taglist({
		screen = s,
		filter = awful.widget.taglist.filter.all,
		style = {
			spacing = dpi(10),
			shape = gears.shape.circle,
			border_width = dpi(0),
			layout = wibox.layout.fixed.horizontal,
			widget = wibox.container.background,
			bg_occupied = beautiful.bg_3 .. '00',
			bg_empty = beautiful.bg_2 .. '00',
			bg_urgent = beautiful.bg_4 .. '00',
			bg_focus = beautiful.fg_color,

			fg_occupied = beautiful.fg_color,
			fg_urgent = beautiful.red,
			fg_normal = beautiful.red,
			fg_empty = beautiful.red,
			fg_focus = beautiful.fg_color,
		},
		layout = {
			spacing = dpi(0),
			layout = wibox.layout.fixed.horizontal,
			spacing_widget = {
				color = beautiful.bg_color .. "00",
				shape = gears.shape.rectangle,
				widget = wibox.widget.separator,
				thickness = dpi(0),
				border_width = dpi(0),
			},
			layout = wibox.layout.fixed.horizontal,
		},
		widget_template = {
			{
				{
					{
						{
							id = "icon_role",
							widget = wibox.widget.imagebox,
							resize = true,
							forced_height = dpi(16),
							forced_width = dpi(16),
						},
						halign = "center",
						valign = "center",
						margins = dpi(4),
						widget = wibox.container.margin,
					},
					{
						id = "text_role",
						widget = wibox.widget.textbox,
					},
					layout = wibox.layout.fixed.horizontal,
					forced_height = dpi(25),
					forced_width = dpi(25),
				},
        left = dpi(2),
        right = dpi(2),
        top = dpi(2),
        bottom = dpi(2),
				widget = wibox.container.margin,
			},
			id = "background_role",
			widget = wibox.container.background,
			-- Add support for hover colors and an index label
			create_callback = function(self, c3, index, objects) --luacheck: no unused args
				self:connect_signal("mouse::enter", function()
					if self.bg ~= beautiful.bg_4 then
						self.backup = self.bg
						self.has_backup = true
					end
					self.bg = beautiful.bg_4
				end)
				self:connect_signal("mouse::leave", function()
					if self.has_backup then
						self.bg = self.backup
					end
				end)
			end,
			update_callback = function(self, c3, index, objects) end,
		},
		buttons = taglist_buttons,
	})

	return the_taglist
end

return get_taglist
