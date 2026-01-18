-- OneDarkPro Vaporwave theme ported from Ghostty
-- Source: https://github.com/olimorris/onedarkpro.nvim
-- stylua: ignore
local vaporwave = {
   black      = '#222435',
   red        = '#E16765',
   green      = '#75BE78',
   yellow     = '#EAE852',
   blue       = '#25ABE4',
   magenta    = '#ff4fa1',
   cyan       = '#46A3AF',
   white      = '#B4B7CF',
   -- bright variants
   br_black   = '#585B89',
   br_red     = '#e99190',
   br_green   = '#98ce9a',
   br_yellow  = '#f0ee7f',
   br_blue    = '#52bcea',
   br_magenta = '#ff4fa1',
   br_cyan    = '#66b7c2',
   br_white   = '#d3d5e3',
   -- special
   background = '#111e2a',
   foreground = '#B4B7CF',
   cursor     = '#ffffff',
   cursor_fg  = '#111e2a',
   selection  = '#304b66',
   sel_fg     = '#ffffff',
}

local colorscheme = {
   foreground = vaporwave.foreground,
   background = vaporwave.background,
   cursor_bg = vaporwave.cursor,
   cursor_border = vaporwave.cursor,
   cursor_fg = vaporwave.cursor_fg,
   selection_bg = vaporwave.selection,
   selection_fg = vaporwave.sel_fg,
   ansi = {
      vaporwave.black,   -- black
      vaporwave.red,     -- red
      vaporwave.green,   -- green
      vaporwave.yellow,  -- yellow
      vaporwave.blue,    -- blue
      vaporwave.magenta, -- magenta
      vaporwave.cyan,    -- cyan
      vaporwave.white,   -- white
   },
   brights = {
      vaporwave.br_black,   -- bright black
      vaporwave.br_red,     -- bright red
      vaporwave.br_green,   -- bright green
      vaporwave.br_yellow,  -- bright yellow
      vaporwave.br_blue,    -- bright blue
      vaporwave.br_magenta, -- bright magenta
      vaporwave.br_cyan,    -- bright cyan
      vaporwave.br_white,   -- bright white
   },
   tab_bar = {
      background = 'rgba(17, 30, 42, 0.9)',
      active_tab = {
         bg_color = vaporwave.selection,
         fg_color = vaporwave.foreground,
      },
      inactive_tab = {
         bg_color = vaporwave.black,
         fg_color = vaporwave.br_black,
      },
      inactive_tab_hover = {
         bg_color = vaporwave.br_black,
         fg_color = vaporwave.foreground,
      },
      new_tab = {
         bg_color = vaporwave.background,
         fg_color = vaporwave.foreground,
      },
      new_tab_hover = {
         bg_color = vaporwave.selection,
         fg_color = vaporwave.foreground,
         italic = true,
      },
   },
   visual_bell = vaporwave.red,
   indexed = {
      [16] = vaporwave.yellow,
      [17] = vaporwave.magenta,
   },
   scrollbar_thumb = vaporwave.br_black,
   split = vaporwave.br_black,
   compose_cursor = vaporwave.magenta,
}

return colorscheme
