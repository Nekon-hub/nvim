-- REMAP KEYS TO MAKE THIS NEOVIM MY NEOVIM

-- EASY RELOAND OF NVIM CONFIG
vim.keymap.set("n", "<leader>sv", function ()
    vim.cmd("so ~/.config.nvim.init.lua") 
 end)

--LEADER
vim.g.mapleader = " "

-- ESCAPE - JJ, KK and the JK roll
vim.keymap.set({"i", "v"}, "jj", "<Esc>")
vim.keymap.set({"i", "v"}, "kk", "<Esc>")
vim.keymap.set({"i", "v"}, "jk", "<Esc>")
vim.keymap.set({"i", "v"}, "kj", "<Esc>")

-- Map ESC to exit terminal (includes JJ, KK, etc)
-- vim.keymap.set("t", "<Esc>", "<C-\><C-n>")
-- TODO this keymap isnt working, but the terminal exit keymap is also not working!


