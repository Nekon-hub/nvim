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
-- SMARTTABS
vim.opt.smarttab = true         -- matches indents for C language
-- plus INDENTS
vim.opt.autoindent = true       -- default
vim.opt.smartindent= true       -- matches indents for C language

-- TODO -- BLANK CHARACTERS
-- default "tab:> ,trail:-,nbsp:+" ?

-- LINE WRAPPING
vim.opt.wrap = true     		--default, see .keymap to move within wrapped line
vim.opt.linebreak = true    	--don't break words
 vim.opt.colorcolumn = "80"
-- TODO colorcolumn is a horrible color!

-- LINE NUMBERS
vim.opt.relativenumber = true

-- CUSORLINE
vim.opt.cursorline = true

-- SCROLLING
vim.opt.scrolloff = 10

-- PARENTHESIS
vim.opt.showmatch = true

-- WINBAR
-- TODO Needs a function to evaluate winbar (as statusbar) and echo top right

-- SEARCH SETTINGS
vim.opt.hlsearch = true         -- highlight search string
vim.opt.incsearch = true        -- highlight as you are typing
-- see settings.keymaps.lua for turn HIGHLIGHTS OFF with <leader>-h-o
vim.opt.ignorecase = true       -- ignore case of typing and search target
vim.opt.smartcase = true        -- if search contains upper case override ignorecase

-- FOLDING


-- BACKUP/SWAPFILE/UNDO HISTORY
vim.opt.swapfile = false    -- swapfiles make you very angry very quickly
vim.opt.backup = false      -- default writebackup keeps a backup around during write
-- vim.opt.undodir = "$XDG_STATE_HOME/nvim/undo//"           -- lists files with undo
-- TODO This line has played havoc with my filestructure and definitely not working
vim.opt.undofile = true     -- auto save undo history to an undofile, restore with file


