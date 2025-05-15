-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- Get system theme

local appearance_themes = {
	Light = "rose-pine-dawn",
	Dark = "zenbones_dark",
}

local appearance = wezterm.gui.get_appearance()
config.color_scheme = appearance_themes[appearance] or "rose-pine-dawn"

-- For example, changing the color scheme:
-- config.color_scheme = 'Sakura (base16)'
-- config.color_scheme = 'zenbones_dark'
-- config.color_scheme = 'rose-pine-dawn'

-- Windows and size
config.window_decorations = "RESIZE"
config.initial_cols = 150
config.initial_rows = 40

-- Tabs
config.use_fancy_tab_bar = false
config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false

-- Text
config.font = wezterm.font_with_fallback({
	"RobotoMono Nerd Font Mono",
	"FiraCode Nerd Font Mono",
	"MesloLGL Nerd Font Mono",
})

config.font_size = 13

-- and finally, return the configuration to wezterm
return config
