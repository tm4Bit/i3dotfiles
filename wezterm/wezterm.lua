-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- This is the GUI config
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.enable_scroll_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.use_resize_increments = true
config.window_close_confirmation = "AlwaysPrompt"
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"
config.cursor_blink_rate = 400
config.window_background_image = '/home/tma/Pictures/wallpaper/bwstarwarstrench.png'
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.02,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 1.0,

  -- You can adjust the saturation also.
  saturation = 0.3,
}
-- Font configuration
config.font = wezterm.font("JetBrains Mono")

-- Colorscheme
-- checkout https://wezfurlong.org/wezterm/colorschemes/index.html for more
config.color_scheme = 'Sonokai (Gogh)'
-- config.color_scheme = 'GitHub Dark'
-- config.color_scheme = 'Batman'

-- and finally, return the configuration to wezterm
return config
