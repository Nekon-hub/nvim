-- REMAP SOME KEYS - make this "MY NEOVIM"!

--LEADER
vim.g.mapleader = " "

-- EASY RELOAD OF NVIM CONFIG
vim.keymap.set("n", "<leader>vv", "<cmd>so ~/.config/nvim/init.lua<cr>")
-- TODO not working, something to do with buffers already loaded.
-- Possibly the greatest mystery in Neovim. HINT Plenary has a RELOAD function

-- ESCAPE - JJ, KK and the JK/KJ roll
vim.keymap.set({"i", "v"}, "jj", "<Esc>")
-- vim.keymap.set({"i", "v"}, "kk", "<Esc>" -- Sod's Law... some Finnish violinists have "kk"
vim.keymap.set({"i", "v"}, "jk", "<Esc>")
vim.keymap.set({"i", "v"}, "kj", "<Esc>")


-- SOME CLEVER/IMPROVED MOVEMENTS...
-- In Visual Mode, be able to move a line or group of lines up or down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
-- The J trick appends line(s) below but cursor moves, this keeps the cursor where it is
vim.keymap.set("n", "J", "mzJ`z")
-- Half page jumps with  C-d, C-u but cursor stays central (zz)
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Allows movement within a wrapped line. Commented out, just use "gj" and "gk"!
-- nnoremap j gj
-- nnoremap k gk
-- Insert lines above or below without entering INSERT MODE
vim.keymap.set('n', 'OO', "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>")
vim.keymap.set('n', 'oo', "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>")


-- SOME SEARCH STUFF
-- Turn search highlights off
vim.keymap.set("n", "<leader>ho", "<cmd>noh<cr>")
-- When replacing highlighted word, DON'T overwrite the paste buffer!
vim.keymap.set("x", "<leader>p", "\"_dP")
-- Similar for deleting to void register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")
-- When searching, keep search terms in the middle of page
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "n", "Nzzzv")

-- Quick fix of movements going through errors as highlighted text
vim.keymap.set("n", "<C-j>", "<cmd>cNext<CR>zz") 
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j>", "<cmd>cNext<CR>zz") 
vim.keymap.set("n", "<leader>k>", "<cmd>cprev<CR>zz") 

-- THE "+" REGISTER
-- Yank or Copy to the "Plus" register - (System Clipboard)
-- Separates yanking to system clipboard from "y" and "yy"(by Asbjorn Halaand via Primeagen)
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- TODO get terminal mode working in a way that works for me

-- "The worst place in the Vim Universe" is no longer in the destination list! 
vim.keymap.set("n", "Q", "nop")

