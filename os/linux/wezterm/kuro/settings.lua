local wezterm = require 'wezterm'

local settings = {
  force_reverse_video_cursor = true,
  colors = require 'themes.kuro',
  -- color_scheme = "kuro",
  window_background_opacity = 0.96,
  font = wezterm.font_with_fallback({
    'Hack Nerd Font',
    { family = 'Fira Code Nerd Font', weight = 'Regular', italic = false },
    'Symbols Nerd Font',
    'Symbols Nerd Font Mono',
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

wezterm.on('update-right-status', function(window, pane)
  -- "Wed Mar 3 08:14"
  local date = wezterm.strftime '%a %b %-d %H:%M '

  window:set_right_status(wezterm.format {
    { Text = wezterm.nerdfonts.fa_clock_o .. ' ' .. date },
  })
end)

return settings
