-- INIT.LUA is the starting point for loading my neovim config

-- Thanks to DT, Doug Black, Ellen Gummeson, Daniel Miessler, Drew Neil et al in the vimrc and init.vim days.
-- Thanks to Primeagen, TJ, Bashbunni, Asbjorn Haaland and others for promoting a Lua-Life.
-- When switching to Lua based config, the best advise I can offer is "RTFM"
-- https://neovim.io/doc/user/index.html
-- https://neovim.io/doc/user/lua.html
-- ":h" is your friend...
-- ... and Josean Martinez blog and YouTube will take you a long way!

-- Creating your own INIT.LUA will teach you how Neovim works and how you work.
-- Copypasta or "oven-ready" Neovim options may limit your Neovim journey.
-- Don't be constrained by the ideas and imagination of others.

-- Require the Lazy.lua file with all plugins
require("lua.lazy")

-- Settings - colors, keymaps and options
-- NB colorscheme settings are in "colors" but scheme is set in "options"
-- settings.options needs to load after the colorscheme settings in settings.colors
-- require("settings.colors")
require("settings.keymaps")
require("settings.options")

