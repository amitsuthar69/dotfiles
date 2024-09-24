local wezterm = require("wezterm")

return {
	font = wezterm.font_with_fallback({
		{ family = "JetBrainsMono Nerd Font", weight = "Regular" },
		{ family = "MesloLGM Nerd Font" },
		"Noto Color Emoji",
	}),
	term = "wezterm",
	warn_about_missing_glyphs = false,
	font_size = 11,
	bold_brightens_ansi_colors = true,
	enable_wayland = true,
	enable_tab_bar = false,
	automatically_reload_config = true,
	window_background_opacity = 0.6,
	window_close_confirmation = "NeverPrompt",
	window_padding = {
		left = 10,
		right = 10,
		top = 10,
		bottom = 10,
	},
}
