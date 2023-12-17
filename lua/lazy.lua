-- LAZY.NVIM FILE
-- is simply a list of my installed plugins and their dependecies.
-- Plugins are configured and initiated (including keymaps)...
-- in lua/settings/plugins/"plugin"

-- First bootstrap folke/lazy.nvim...
-- (Packer is no more)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", --latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)


local opts = {
    defaults = {
        lazy = false,
    },
    rtp = {
        disabled_plugins = {
            "gzip",
            "matchit",
            -- "matchparen",
            "netrwPlugin",
            "tarPlugin",
            "tohtml",
            "tutor",
            "zipPlugin",
        }
    },
    changer_detection = {
        notify = true,
    },
}

require("lazy").setup("plugins")


