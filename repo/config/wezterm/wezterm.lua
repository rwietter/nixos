--[[
	Wezterm configuration
	@see https://wezfurlong.org/wezterm/config/files.html

	@author: Maurício Witter <rwietter@duck.com> (@rwietter)
	@license: MIT

	@docs:
		- Yaml color scheme: https://wezfurlong.org/wezterm/config/lua/wezterm.color/load_base16_scheme.html
		- Color schemes: https://wezfurlong.org/wezterm/config/appearance.html#defining-a-color-scheme-in-your-weztermlua
		- Troubleshooting: https://wezfurlong.org/wezterm/troubleshooting.html
]] --

local wezterm = require("wezterm")

local function font_with_fallback(name, params)
	local names = { name, "Apple Color Emoji", "azuki_font" }
	return wezterm.font_with_fallback(names, params)
end

local fonts = {
	pragmata = "PragmataPro for Powerline",
	iosevka = "Iosevka Nerd Font Mono",
	fantasque = "Fantasque Sans Mono",
	aesthetic = "AestheticIosevka Nerd Font Mono",
	geist = "Geist Mono",
	danknerd = "DankMono Nerd Font Mono",
	berkeley = "Berkeley Mono",
	jetnerd = "JetBrainsMono Nerd Font",
	commitnerd = "CommitMono Nerd Font Mono",
	cascadia = "Cascadia Mono",
}

local font_name = fonts.iosevka

local themes = {
	rose_pine_dark = "rose-pine",
	rose_pine_light = "rose-pine-dawn",
	night_owlish_light = "Night Owlish Light",
	catppuccin_mocha = "Catppuccin Mocha",
	nebula_16 = "Nebula (base16)",
	rouge = "Rouge 2",
	palenight = "Palenight (Gogh)",
	catppuccin_macchiato = "Catppuccin Macchiato",
	sagelight = "Sagelight (base16)",
	nord_light = "Nord Light (Gogh)",
	sequoia_monochrome = "Sequoia Monochrome",
	sequoia_moonlight = "Sequoia Moonlight",
	atelier_cave_light = "Atelier Cave Light (base16)",
	banana_blueberry = "Banana Blueberry",
}

return {
	-- import from $HOME/.config/wezterm/theme.lua
	color_schemes = {
  	['nix'] = require('theme')
	},
	color_scheme = "nix",

	-- OpenGL for GPU acceleration, Software for CPU
	front_end = "WebGpu",--WebGpu - OpenGL

	-- Font config
	font = font_with_fallback(font_name),
	font_rules = {
		{
			italic = true,
			font = font_with_fallback(font_name, { italic = true }),
		},
		{
			italic = true,
			intensity = "Bold",
			font = font_with_fallback(font_name, { italic = true, bold = true }),
		},
		{
			intensity = "Bold",
			font = font_with_fallback(font_name, { bold = true }),
		},
	},
	warn_about_missing_glyphs = true,
	font_size = 12.5,
	line_height = 1.4,

	-- Cursor style
	default_cursor_style = "BlinkingUnderline",

	-- X11
	-- enable_wayland = false,

	-- Keybinds
	disable_default_key_bindings = true,
	keys = {
		{
			key = [[\]],
			mods = "CTRL|ALT",
			action = wezterm.action({
				SplitHorizontal = { domain = "CurrentPaneDomain" },
			}),
		},
		{
			key = [[/]],
			mods = "CTRL",
			action = wezterm.action({
				SplitVertical = { domain = "CurrentPaneDomain" },
			}),
		},
		{
			key = "q",
			mods = "CTRL",
			action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
		},
		{
			key = "h",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Left" }),
		},
		{
			key = "l",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Right" }),
		},
		{
			key = "k",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Up" }),
		},
		{
			key = "j",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Down" }),
		},
		{
			key = "h",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }),
		},
		{
			key = "l",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }),
		},
		{
			key = "k",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }),
		},
		{
			key = "j",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }),
		},
		-- {
		-- 	key = "n",
		-- 	mods = "CTRL",
		-- 	action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
		-- },
		{
			key = "F2",
			mods = "CTRL",
			action = wezterm.action({ CloseCurrentTab = { confirm = false } }),
		},
		{
			key = "Tab",
			mods = "CTRL",
			action = wezterm.action({ ActivateTabRelative = 1 }),
		},
		{
			key = "Tab",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivateTabRelative = -1 }),
		},
		{
			key = "M",
			mods = "CTRL",
			action = "ActivateCopyMode",
		},
		{
			key = "v",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ PasteFrom = "Clipboard" }),
		},
		{
			key = "c",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
		},
	},

	bold_brightens_ansi_colors = true,

	-- Padding
	window_padding = {
		left = 20,
		right = 20,
		top = 20,
		bottom = 20,
	},

	-- Tab Bar
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	show_tab_index_in_tab_bar = true,
	tab_bar_at_bottom = true,
	use_fancy_tab_bar = true,

	-- General
	automatically_reload_config = true,
	inactive_pane_hsb = {
		saturation = 1,
		brightness = 1,
	},
	window_background_opacity = 1,
	window_close_confirmation = "NeverPrompt",
	window_frame = {
		active_titlebar_bg = "#090909",
		font = font_with_fallback(font_name, { bold = true }),
	},
}
