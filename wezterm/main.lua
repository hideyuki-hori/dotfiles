local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Edge Dark (base16)'

config.font = wezterm.font 'Myrica M'
config.font_size = 16.0

return config
