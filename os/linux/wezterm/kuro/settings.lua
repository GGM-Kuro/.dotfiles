local wezterm = require 'wezterm'


local settings = {
  force_reverse_video_cursor = true,
  color_scheme = 'nordfox',
  window_background_opacity = 0.95,
  font = wezterm.font_with_fallback({
    { family = 'FiraCodeNerdFont', weight = 'Regular', italic = false },
    'SymbolsNerdFont'
  }),
  hide_tab_bar_if_only_one_tab = true,
  max_fps = 120,
  default_prog = { '/bin/zsh' },

}

for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
  if gpu.backend == 'Vulkan' then
    settings.webgpu_preferred_adapter = gpu
    settings.front_end = 'OpenGL'
    break
  end
end

return settings
