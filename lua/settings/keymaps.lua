-- REMAP SOME KEYS - make this "MY NEOVIM"!

--LEADER
vim.g.mapleader = " "

-- EASY RELOAND OF NVIM CONFIG
vim.keymap.set("n", "<leader>vv", "<cmd>so ~/.config/nvim/init.lua<cr>")
-- TODO not working, something to do with buffers already loaded.

-- ESCAPE - JJ, KK and the JK/KJ roll
vim.keymap.set({"i", "v"}, "jj", "<Esc>")
-- vim.keymap.set({"i", "v"}, "kk", "<Esc>" -- Sod's Law... Finnish names with "kk"
vim.keymap.set({"i", "v"}, "jk", "<Esc>")
vim.keymap.set({"i", "v"}, "kj", "<Esc>")


-- SOME CLEVER/IMPROVED MOVEMENTS...
-- In Visual Mode, be able to move a line or group of lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- The J trick appends line(s) below but cursor moves, this keeps the cursor where it is
vim.keymap.set("n", "J", "mzJ`z")
-- Half page jumps with  C-d, C-u but cursor stays central
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")


-- SOME SEARCH STUFF
-- Turn search highlights off
vim.keymap.set("n", "<leader>ho", "<cmd>noh<cr>")
-- When replacing highlighted word, DON'T overwrite the paste buffer!
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- TODO Yank or Copy to the "Plus" buffer (System Clipboard)
-- splits y and yy from yanking to system clipboard (by Asbjorn Halaand via Primeagen)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- Quick fix movements
vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz") 
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j>", "<cmd>cnext<CR>zz") 
vim.keymap.set("n", "<leader>k>", "<cmd>cprev<CR>zz") 


-- TODO get terminal mode working

-- "The worst place in the Universe" is no longer in my list of destinations!
vim.keymap.set("n", "Q", "nop")

