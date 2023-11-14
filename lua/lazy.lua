-- LAZY.NVIM FILE
-- is simply a list of my installed plugins and their dependecies.
-- Plugins are configured (including keymaps) in after/plugins

-- First bootstrap folke/lazy.nvim...
-- (Packer is no more)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("settings.plugins")

-- load my plugins
-- ==========
-- MY PLUGINS
-- ==========

-- TREESITTER



-- LSP



-- TELESCOPE
-- + nvim-telescope/telescope-file-browser



-- LUALINE



-- NEORG



-- NEW PLUGINS TO INSTALL
-- A Git plugin - VGit?
-- lukas-reineke/indent-blankline
-- nvim-treesitter/playground - FUNCTIONALITY NOW IN Treesitter!
-- nvimdev/dashboard
-- lukas-reineke/headlines - check with Neorg
-- folke/which-key
-- folke/zen-mode
-- stevearc/aerial
-- stevearc/oil


-- ===============
-- COLORSCHEMES --
-- ===============

-- x SUBSTRATA

-- ROSE-PINE
-- NORD
-- NO-CLOWN-FIESTA
-- GOTHAM
-- EVERFOREST


