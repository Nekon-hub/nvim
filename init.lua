-- init.lua is starting point for loading my neovim config

-- Plugin Settings (not colorschemes which are in lua/settings/colors
require("plugins")

-- Settings - colors, keymaps and options
-- NB colorscheme is set after colorscheme settings in colors
require("settings.colors")
require("settings.keymaps")
require("settings.options")

