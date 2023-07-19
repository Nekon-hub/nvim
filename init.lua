-- init.lua is the starting point for loading my neovim config

-- Thanks to DT, Doug Black, Ellen Gummeson, Daniel Miessler, Drew Neil et al in the vimrc and init.vim days.
-- Thanks to Primeagen, TJ, Bashbunni, Asbjorn Haaland and others in Lua-life.


-- Plugin Settings
-- Colorscheme plugins have settings in settings.colors
require("plugins")

-- Settings - colors, keymaps and options
-- NB colorscheme settings are in "colors" but scheme is set in "options" 
require("settings.colors")
require("settings.keymaps")
require("settings.options")


