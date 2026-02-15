local wezterm = require("wezterm")

return {
	keys = {
		{
			key = "q",
			mods = "CTRL",
			action = wezterm.action.QuitApplication,
		},
		{
			key = "w",
			mods = "CTRL",
			action = wezterm.action.CloseCurrentPane { confirm = false },
		},
		{
			key = "RightArrow",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
		},
		{
			key = "LeftArrow",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
		},
		{
			key = "UpArrow",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
		},
		{
			key = "DownArrow",
			mods = "CTRL|SHIFT",
			action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
		},
		{
			key = "LeftArrow",
			mods = "CTRL",
			action = wezterm.action.ActivatePaneDirection "Left",
		},
		{
			key = "RightArrow",
			mods = "CTRL",
			action = wezterm.action.ActivatePaneDirection "Right",
		},
		{
			key = "UpArrow",
			mods = "CTRL",
			action = wezterm.action.ActivatePaneDirection "Up",
		},
		{
			key = "DownArrow",
			mods = "CTRL",
			action = wezterm.action.ActivatePaneDirection "Down",
		},
	},
	font = wezterm.font_with_fallback({
		{ family = "JetBrainsMono Nerd Font", weight = "Regular" },
		{ family = "MesloLGM Nerd Font" },
		"Noto Color Emoji",
	}),
	color_scheme = "Tokyo Night",
	-- color_scheme = "Catppuccin Mocha",
	term = "wezterm",
	warn_about_missing_glyphs = false,
	font_size = 11,
	bold_brightens_ansi_colors = true,
	enable_wayland = true,
	enable_tab_bar = false,
	automatically_reload_config = true,
	window_background_opacity = 0.6,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	window_padding = {
		left = 15,
		right = 15,
		top = 15,
		bottom = 10,
	},
}
