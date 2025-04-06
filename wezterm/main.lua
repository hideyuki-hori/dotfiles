local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.color_scheme = 'Edge Dark (base16)'

config.font = wezterm.font 'Myrica M'
config.font_size = 16.0

config.hide_tab_bar_if_only_one_tab = true

config.keys = {
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'd',
    mods = 'CMD|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'w',
    mods = 'CMD|SHIFT',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
}

return config

