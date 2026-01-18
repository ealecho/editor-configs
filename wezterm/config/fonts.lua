local wezterm = require('wezterm')
local platform = require('utils.platform')

-- Ported from Ghostty: font-family="MonoLisa Medium", font-size=14
local font_family = 'MonoLisa'
local font_size = platform.is_mac and 14 or 12

return {
   font = wezterm.font({
      family = font_family,
      weight = 550, -- Heavier to match Ghostty's font-thicken=true
      -- Ghostty font features: +ss01,+ss02,+ss07,+ss03,+zero,+ss18,+ss16,+ss12
      harfbuzz_features = { 'ss01', 'ss02', 'ss07', 'ss03', 'zero', 'ss18', 'ss16', 'ss12', 'calt', 'liga' },
   }),
   font_size = font_size,

   -- Font rules for bold/italic variants
   font_rules = {
      {
         intensity = 'Bold',
         italic = false,
         font = wezterm.font({ family = font_family, weight = 'Bold' }),
      },
      {
         intensity = 'Bold',
         italic = true,
         font = wezterm.font({ family = font_family, weight = 'Bold', italic = true }),
      },
      {
         italic = true,
         font = wezterm.font({ family = font_family, weight = 550, italic = true }),
      },
   },

   -- Ghostty: font-thicken=true (approximate with freetype settings)
   freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
   freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'

   -- Line height for better readability
   line_height = 1.1,

   -- Cell width adjustment (optional, tweak if needed)
   -- cell_width = 1.0,
}
