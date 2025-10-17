local wezterm = require("wezterm")
local config = wezterm.config_builder()
local opacity = 0.75

config.color_scheme = "Tokyo Night"

config.font = wezterm.font_with_fallback({
	-- { family = "Iosevka Term Extended", stretch = "Expanded" },
	-- "CaskaydiaCove Nerd Font Mono",
	"Fira Code",
	"JetBrains Mono",
})
config.font_size = 12

-- Window
config.window_background_opacity = opacity
config.macos_window_background_blur = 20
config.initial_rows = 45
config.initial_cols = 180
config.enable_scroll_bar = false
config.window_decorations = "RESIZE"
config.front_end = "WebGpu"
config.native_macos_fullscreen_mode = true

-- Tabs
config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- config.keys = {
-- 	{
-- 		key = "f",
-- 		mods = "CTRL",
-- 		action = wezterm.action.ToggleFullScreen,
-- 	},
-- 	{
-- 		key = "'",
-- 		mods = "CTRL",
-- 		action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
-- 	},
-- }

config.mouse_bindings = {
	-- Ctrl-click will open the link under the mouse cursor
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

return config
