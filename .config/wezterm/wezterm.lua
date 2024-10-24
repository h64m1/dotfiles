-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.font_size = 16.0
config.use_ime = true

-- timeout_milliseconds defaults to 1000 and can be omitted
config.leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 2000 }
config.keys = {
  { key = '\\',  mods = 'SHIFT|CTRL', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
  { key = '\\',  mods = 'CTRL',       action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  -- Tab移動
  { key = "Tab", mods = "CTRL",       action = wezterm.action.ActivateTabRelative(1) },
  { key = "Tab", mods = "SHIFT|CTRL", action = wezterm.action.ActivateTabRelative(-1) },
  -- Pane移動 leader + hlkj
  { key = "h",   mods = "CTRL",     action = wezterm.action.ActivatePaneDirection("Left") },
  { key = "l",   mods = "CTRL",     action = wezterm.action.ActivatePaneDirection("Right") },
  { key = "k",   mods = "CTRL",     action = wezterm.action.ActivatePaneDirection("Up") },
  { key = "j",   mods = "CTRL",     action = wezterm.action.ActivatePaneDirection("Down") },
}

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

-- and finally, return the configuration to wezterm
return config
