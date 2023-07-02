-- init.lua is starting point for loading my neovim config

-- Plugin Settings
-- Colorscheme plugins have settings in settings.colors
require("plugins")

-- Settings - colors, keymaps and options
-- NB colorscheme settings are in "colors" but scheme is set in "options" 
require("settings.colors")
require("settings.keymaps")
require("settings.options")


