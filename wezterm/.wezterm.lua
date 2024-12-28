-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.color_scheme = "Catppuccin Macchiato"
config.term = "wezterm"
config.enable_scroll_bar = true
config.send_composed_key_when_left_alt_is_pressed = true
config.send_composed_key_when_right_alt_is_pressed = false
config.font = wezterm.font("MesloLGS NF")

-- and finally, return the configuration to wezterm
return config
