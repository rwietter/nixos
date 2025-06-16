-- requirements
-- ~~~~~~~~~~~~
local awful = require("awful")
local beautiful = require("beautiful")
local dpi = beautiful.xresources.apply_dpi
local helpers = require("helpers")
local wibox = require("wibox")
local gears = require("gears")
local rubato = require("mods.rubato")
local readwrite = require("misc.scripts.read_writer")

--[[ few stuffs to note

-- sidebar height (extras disabled)
-- height = dpi(580),

-- sidebar new height (extras enabled)
-- height = dpi(715),

]]

awful.screen.connect_for_each_screen(function(s)
	-- Mainbox
	-- ~~~~~~~~~~~~~~~~~
	dashboard = wibox({
		type = "dock",
		shape = helpers.rrect(beautiful.rounded),
		screen = s,
		width = dpi(1300),
		bg = beautiful.bg_color,
		margins = 20,
		ontop = true,
		visible = true
	})
	-- ~~~~~~~~~~~~~~~

	-- widgets
	-- ~~~~~~~~
	local title = require("layout.dashboard.title")
	local sessions = require("layout.controlCenter.sessionctl")
	local services = require("layout.dashboard.services")
	local statusline = require("layout.dashboard.statusbar")

	-- animations
	--------------
	local slide_right = rubato.timed {
		pos = s.geometry.height,
		rate = 60,
		intro = 0.14,
		duration = 0.33,
		subscribed = function(pos) dashboard.y = s.geometry.y + pos end
	}

	local slide_end = gears.timer({
		single_shot = true,
		timeout = 0.33 + 0.08,
		callback = function() dashboard.visible = false end
	})

	-- toggler script
	-- ~~~~~~~~~~~~~~~
	local dash_screen_backup = 1

	dash_toggle = function(screen)
		-- set screen to default, if none were found
		if not screen then screen = s end

		-- control center x position
		dashboard.x = screen.geometry.x + (dpi(300) + beautiful.useless_gap * 4)

		-- toggle visibility
		if dashboard.visible then
			-- check if screen is different or the same
			if dash_screen_backup ~= screen.index then
				dashboard.visible = true
			else
				slide_end:again()
				slide_right.target = s.geometry.height
			end
		elseif not dashboard.visible then
			slide_right.target = s.geometry.height -
					(dashboard.height + beautiful.useless_gap *
						2)
			dashboard.visible = true
		end

		-- set dash_screen_backup to new screen
		dash_screen_backup = screen.index
	end
	-- Eof toggler script
	-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

	-- function to show/hide extra buttons
	-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
	function control_dash(input)
		if input then
			awesome.emit_signal("dashboard::extras", true)
			dashboard.height = dpi(715)
			readwrite.write("dashboard_state", "open")
		else
			awesome.emit_signal("dashboard::extras", false)
			dashboard.height = dpi(300)
			readwrite.write("dashboard_state", "closed")
		end
		slide_right.target = s.geometry.height -
				(dashboard.height + beautiful.useless_gap * 2)
	end

	-- Initial setup
	dashboard:setup {
		{
			{
				{
					title,
					nil,
					sessions,
					layout = wibox.layout.align.horizontal
				},
				{
					statusline,
					margins = dpi(0),
					widget = wibox.container.margin
				},
				services,
				layout = wibox.layout.fixed.vertical,
				spacing = dpi(20)
			},
			widget = wibox.container.margin,
			margins = dpi(25),
		},

		layout = wibox.layout.fixed.vertical
	}

	-- reload cc state on reload or startup
	---------------------------------------
	local output = readwrite.readall("dashboard_state")

	if output:match("open") then
		awesome.emit_signal("dashboard::extras", true)
		dashboard.height = dpi(715)
	else
		awesome.emit_signal("dashboard::extras", false)
		dashboard.height = dpi(300)
	end
	--------------------------------------------------------
end)
