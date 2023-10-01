local wezterm = require("wezterm")
local config = {}
config.colors = require("lua/rose-pine").colors()
config.window_frame = require("lua/rose-pine").window_frame()
config.font = wezterm.font("Fira Code Nerd Font")
config.font_size = 15.0
config.window_background_opacity = 0.5

return config
