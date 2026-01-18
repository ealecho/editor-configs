local gpu_adapters = require('utils.gpu-adapter')
local colors = require('colors.custom')

return {
   max_fps = 120,
   front_end = 'WebGpu',
   webgpu_power_preference = 'HighPerformance',
   webgpu_preferred_adapter = gpu_adapters:pick_best(),
   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Dx12', 'IntegratedGpu'),
   -- webgpu_preferred_adapter = gpu_adapters:pick_manual('Gl', 'Other'),
   underline_thickness = '1.5pt',

   -- cursor (Ghostty: cursor-style = bar, cursor-style-blink=true)
   animation_fps = 120,
   cursor_blink_ease_in = 'EaseOut',
   cursor_blink_ease_out = 'EaseOut',
   default_cursor_style = 'BlinkingBar',
   cursor_blink_rate = 650,
   cursor_thickness = '2px',
   force_reverse_video_cursor = false,

   -- Visual polish
   -- Smooth scrolling
   enable_kitty_keyboard = true,
   -- Undercurl support (for nvim diagnostics, etc.)
   underline_position = '-3px',

   -- color scheme
   colors = colors,

   -- background disabled - plain background

   -- scrollbar
   enable_scroll_bar = false,

   -- tab bar
   enable_tab_bar = false,
   hide_tab_bar_if_only_one_tab = false,
   use_fancy_tab_bar = false,
   tab_max_width = 25,
   show_tab_index_in_tab_bar = false,
   switch_to_last_active_tab_when_closing_tab = true,

   -- window (Ghostty: window-padding-x = 0, window-padding-y = 0)
   window_padding = {
      left = 0,
      right = 0,
      top = 0,
      bottom = 0,
   },
   adjust_window_size_when_changing_font_size = false,
   window_close_confirmation = 'NeverPrompt',
   window_decorations = 'RESIZE', -- clean look, no title bar
   window_background_opacity = 0.92, -- Ghostty: background-opacity = 0.92
   macos_window_background_blur = 20, -- Ghostty: background-blur-radius = 20
   window_frame = {
      active_titlebar_bg = '#090909',
      -- font = fonts.font,
      -- font_size = fonts.font_size,
   },
   -- inactive_pane_hsb = {
   --    saturation = 0.9,
   --    brightness = 0.65,
   -- },
   -- Ghostty: unfocused-split-opacity = 0.99
   inactive_pane_hsb = {
      saturation = 1,
      brightness = 0.99,
   },

   -- Ghostty: bell-features = border (visual bell)
   visual_bell = {
      fade_in_function = 'EaseIn',
      fade_in_duration_ms = 150,
      fade_out_function = 'EaseOut',
      fade_out_duration_ms = 150,
      target = 'BackgroundColor',
   },
}
