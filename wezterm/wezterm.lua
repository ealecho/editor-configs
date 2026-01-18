local wezterm = require('wezterm')
local Config = require('config')

-- Auto dark/light theme switching
local dark_theme = require('colors.vaporwave-dark')
local light_theme = require('colors.xcode-light')

local function get_appearance_colors()
   local appearance = wezterm.gui and wezterm.gui.get_appearance() or 'Dark'
   if appearance:find('Light') then
      return light_theme
   else
      return dark_theme
   end
end

wezterm.on('window-config-reloaded', function(window, _)
   local overrides = window:get_config_overrides() or {}
   local appearance = window:get_appearance()
   local colors = appearance:find('Light') and light_theme or dark_theme
   if overrides.colors ~= colors then
      overrides.colors = colors
      window:set_config_overrides(overrides)
   end
end)

-- Disable backdrops for plain background
-- require('utils.backdrops')
--    :set_images()
--    :random()

require('events.left-status').setup()
require('events.right-status').setup({ date_format = '%a %H:%M:%S' })
require('events.tab-title').setup({ hide_active_tab_unseen = false, unseen_icon = 'circle' })
require('events.new-tab-button').setup()

return Config:init()
   :append(require('config.appearance'))
   :append(require('config.bindings'))
   :append(require('config.domains'))
   :append(require('config.fonts'))
   :append(require('config.general'))
   :append(require('config.launch')).options
