-- REMAP KEYS TO MAKE THIS NEOVIM MY NEOVIM

-- EASY RELOAND OF NVIM CONFIG
vim.keymap.set("n", "<leader>sv", "<cmd>so ~/.config/nvim/init.lua<cr>")
-- TODO not working, something to do with buffers already loaded.

--LEADER
vim.g.mapleader = " "

-- ESCAPE - JJ, KK and the JK roll
vim.keymap.set({"i", "v"}, "jj", "<Esc>")
vim.keymap.set({"i", "v"}, "kk", "<Esc>")
vim.keymap.set({"i", "v"}, "jk", "<Esc>")
vim.keymap.set({"i", "v"}, "kj", "<Esc>")

-- Insert lines above or below cursor without moving cursor




-- SEARCH HIGHLIGHT OFF
vim.keymap.set("n", "<leader>ho", "<cmd>noh<cr>")


-- TODO create a keymap to easily exit terminal mode
-- Also check general keymaps for terminal mode as there seems to be a problem.
