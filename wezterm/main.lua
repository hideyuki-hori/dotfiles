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
    mods = 'CMD',
    action = wezterm.action_callback(function(window, pane)
      local tab = window:active_tab()
      if #tab:panes() > 1 then
        window:perform_action(
          wezterm.action.CloseCurrentPane { confirm = false },
          pane
        )
      else
        window:toast_notification("WezTerm", "Cannot close the last pane", nil, 2000)
      end
    end),
  },
  {
    key = 'w',
    mods = 'CMD|SHIFT',
    action = wezterm.action.CloseCurrentPane { confirm = false },
  },
}

return config

