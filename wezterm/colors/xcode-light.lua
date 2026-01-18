-- Xcode Light theme for WezTerm
-- Ported from Ghostty's official Xcode Light theme

local xcode = {
   -- ansi colors (palette 0-7)
   black      = '#b4d8fd',  -- palette 0
   red        = '#d12f1b',  -- palette 1
   green      = '#3e8087',  -- palette 2
   yellow     = '#78492a',  -- palette 3
   blue       = '#0f68a0',  -- palette 4
   magenta    = '#ad3da4',  -- palette 5
   cyan       = '#804fb8',  -- palette 6
   white      = '#262626',  -- palette 7
   -- bright variants (palette 8-15)
   br_black   = '#8a99a6',  -- palette 8
   br_red     = '#d12f1b',  -- palette 9
   br_green   = '#23575c',  -- palette 10
   br_yellow  = '#78492a',  -- palette 11
   br_blue    = '#0b4f79',  -- palette 12
   br_magenta = '#ad3da4',  -- palette 13
   br_cyan    = '#4b21b0',  -- palette 14
   br_white   = '#262626',  -- palette 15
   -- special
   background = '#ffffff',
   foreground = '#262626',
   cursor     = '#262626',
   cursor_fg  = '#ffffff',
   selection  = '#b4d8fd',
   sel_fg     = '#262626',
}

local colorscheme = {
   foreground = xcode.foreground,
   background = xcode.background,
   cursor_bg = xcode.cursor,
   cursor_border = xcode.cursor,
   cursor_fg = xcode.cursor_fg,
   selection_bg = xcode.selection,
   selection_fg = xcode.sel_fg,
   ansi = {
      xcode.black,
      xcode.red,
      xcode.green,
      xcode.yellow,
      xcode.blue,
      xcode.magenta,
      xcode.cyan,
      xcode.white,
   },
   brights = {
      xcode.br_black,
      xcode.br_red,
      xcode.br_green,
      xcode.br_yellow,
      xcode.br_blue,
      xcode.br_magenta,
      xcode.br_cyan,
      xcode.br_white,
   },
   tab_bar = {
      background = 'rgba(255, 255, 255, 0.9)',
      active_tab = {
         bg_color = xcode.selection,
         fg_color = xcode.foreground,
      },
      inactive_tab = {
         bg_color = '#f0f0f0',
         fg_color = xcode.br_black,
      },
      inactive_tab_hover = {
         bg_color = '#e0e0e0',
         fg_color = xcode.foreground,
      },
      new_tab = {
         bg_color = xcode.background,
         fg_color = xcode.foreground,
      },
      new_tab_hover = {
         bg_color = xcode.selection,
         fg_color = xcode.foreground,
         italic = true,
      },
   },
   visual_bell = xcode.red,
   scrollbar_thumb = '#c0c0c0',
   split = '#d0d0d0',
   compose_cursor = xcode.magenta,
}

return colorscheme
