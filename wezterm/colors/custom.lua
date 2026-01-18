-- Auto dark/light theme switching
-- Matches Ghostty: theme = dark:onedarkpro_vaporwave,light:Xcode Light
local wezterm = require('wezterm')

local dark_theme = require('colors.vaporwave-dark')
local light_theme = require('colors.xcode-light')

local function get_colors()
   local appearance = wezterm.gui and wezterm.gui.get_appearance() or 'Dark'
   if appearance:find('Light') then
      return light_theme
   else
      return dark_theme
   end
end

return get_colors()
