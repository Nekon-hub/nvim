-- INIT.LUA is the starting point for loading my neovim config

-- Thanksto DT, Doug Black, Ellen Gummeson, Daniel Miessler, Drew Neil et al in the vimrc and init.vim days.
-- Thanks to Primeagen, TJ, Bashbunni, Asbjorn Haaland and others for promoting a Lua-Life.
-- When switching to Lua based config, the best advice I can offer is "RTFM"
-- https://neovim.io/doc/user/index.html
-- https://neovim.io/doc/user/lua.html
-- ":h" is your friend...
-- Josean Martinez and The Rad Lectures YouTube channels are great resources...
-- https://www.youtube.com/@joseanmartinez and https://www.youtube.com/@theradlectures

-- Creating your own INIT.LUA will teach you how Neovim works and how you work.
-- Copypasta or "oven-ready" Neovim options may limit your Neovim journey.
-- Don't be constrained by the ideas and imagination of others.

-- My file structure is a little different.
-- I don't like the "UserName" directory, it feels clunky and unnecessary.
-- Read the Nvim Lua Docs, there are better ways to do it.

-- Switch from Packer to Lazy 2023/11/14 
-- Plugins now loaded automagically.
-- There may be many plugins, but only those actually needed are loaded.

-- Keymaps and Nvim-Options loaded first to ensure leader-key is set before Lazy load
require("settings.keymaps")
require("settings.options")

-- Require the Lazy.lua file with all plugins
require(".lazy")

