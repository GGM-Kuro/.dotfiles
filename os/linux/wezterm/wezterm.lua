-- Pull in the wezterm API
local wezterm = require 'wezterm'
local settings = require 'kuro.settings'
local keymaps= require 'kuro.keymaps'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()

end

for k, v in pairs(settings) do
  config[k] = v
end

config.keys = keymaps

return config
