local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	--window
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	window_padding = { left = 3, right = 3, top = 5, bottom = 0 },
	hide_tab_bar_if_only_one_tab = true,
	initial_cols = 120,
	initial_rows = 30,

   max_fps = 144,

	-- Tab bar style
	colors = {
		tab_bar = {
			background = "#1c1c1c",
			active_tab = {
				bg_color = "#005f87",
				fg_color = "#ffffff",
			},
			inactive_tab = {
				bg_color = "#303030",
				fg_color = "#888888",
			},
			inactive_tab_hover = {
				bg_color = "#505050",
				fg_color = "#ffffff",
			},
			new_tab = {
				bg_color = "#1c1c1c",
				fg_color = "#00ff00",
			},
		},
	},

	--behavior
	scrollback_lines = 5000,

	-- appearance
	font = wezterm.font("0xProto Nerd Font Mono", { weight = "Regular" }),
	font_size = 12,
	line_height = 1.1,
	color_scheme = "Gruvbox Dark", -- built-in theme
	window_background_opacity = 0.8, -- transparency
	text_background_opacity = 1,
	default_cursor_style = "BlinkingUnderline",
	win32_system_backdrop = "Acrylic",

	-- keybinding
	keys = {
		-- New tab
		{ key = "n", mods = "ALT", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },

		-- Close tab
		{ key = "w", mods = "ALT", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },

		-- Move between tabs
		{ key = "RightArrow", mods = "ALT", action = wezterm.action({ ActivateTabRelative = 1 }) },
		{ key = "LeftArrow", mods = "ALT", action = wezterm.action({ ActivateTabRelative = -1 }) },

		-- Navigate panes
		{ key = "h", mods = "CTRL|ALT", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
		{ key = "l", mods = "CTRL|ALT", action = wezterm.action({ ActivatePaneDirection = "Right" }) },
		{ key = "k", mods = "CTRL|ALT", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
		{ key = "j", mods = "CTRL|ALT", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
	},
}

return config
