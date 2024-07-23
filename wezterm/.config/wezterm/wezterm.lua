local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.window_background_opacity = 0.8
config.color_scheme = "Gruvbox Dark (Gogh)"
config.font = wezterm.font_with_fallback({
	"Fira Code",
	"JetBrains Mono",
})

config.font_size = 9
config.enable_scroll_bar = false
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.initial_rows = 35
config.initial_cols = 105

-- config.window_padding = {
-- 	left = 10,
-- 	right = 10,
-- 	top = 10,
-- 	bottom = 0,
-- }

return config
