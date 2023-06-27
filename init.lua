-- init.lua is starting point for loading my neovim config

-- Plugin Settings
-- Colorscheme plugins have settings in settings.colors
require("plugins")

-- Settings - colors, keymaps and options
-- NB set colorscheme in "options" after colorscheme settings are loaded in colors
require("settings.colors")
require("settings.keymaps")
require("settings.options")

