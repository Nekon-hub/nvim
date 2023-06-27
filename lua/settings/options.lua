-- Setting Neovim's built-in options

-- GENERAL NEOVIM DEFAULTS 
-- I like to know these are set to my liking,
-- after setting these in .vimrc and init.vim for so long!
-- encoding = UTF-8
-- compatible = false
-- syntax = true
-- filetype settings (detect, plugin, indent) on, but uses Treesitter/LSP
-- autoread  = true (reload files modified outside of buffer)
-- hidden = true (allows unsaved work in buffers)	 
-- wildmenu = true (list of options on <TAB>completions)
-- lazyredraw =false (not required in Neovim??)
--

-- ================
-- SOME UI SETTINGS 
-- ================
-- Gotta be looking good!

-- COLORSCHEME
vim.opt.termguicolors = true
vim.cmd[[colorscheme rose-pine-moon]] 

-- TABS AND SPACES
vim.opt.tabstop = 4 			-- 4 spaces to a TAB
vim.opt.softtabstop = 4			-- also applies when editing
vim.opt.expandtab = true		-- a TAB is now ACTUALLY four spaces!
vim.opt.shiftwidth = 4			-- "normal" tab shift is 4 spaces 

-- TODO -- BLANK CHARACTERS
-- default "tab:> ,trail:-,nbsp:+" ?

-- LINE WRAPPING
vim.opt.wrap = true     		--default
vim.opt.linebreak = true    	--don't break words
vim.opt.colorcolumn = "80"
-- TODO colorcolumn is a horrible color!

-- LINE NUMBERS
vim.opt.number = true
vim.opt.relativenumber = true

-- CUSORLINE
vim.opt.cursorline = true

-- SCROLLING
vim.opt.scrolloff = 8

-- PARENTHESIS
vim.opt.showmatch = true

-- WINBAR
-- TODO Needs a function to evaluate winbar (as statusbar) and echo top right

-- SEARCH SETTINGS


-- FOLDING


