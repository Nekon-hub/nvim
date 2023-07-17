-- Setting Neovim's built-in options

-- GENERAL NEOVIM DEFAULTS 
-- I like to know these are set to my liking,after setting these in .vimrc and init.vim for so long!
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
vim.opt.wrap = true     		-- default, see keymaps to move within wrapped line
vim.opt.linebreak = true    	-- don't break words
vim.opt.colorcolumn = "80"      -- try to stay within 80 chars

-- CURSORLINE and CURSORCOLUMN - be able to spot the cursor quickly
vim.opt.cursorline = true
vim.opt.cursorcolumn = true     
-- Get a Fat Cursor, because its what I always knew
vim.opt.guicursor = ""

-- WINBAR - top right file name and modify status, useful for splits
vim.cmd[[set winbar=%=%m\ %f]] 

-- LINE NUMBERS
vim.opt.number = true
vim.opt.relativenumber = true
-- SIGNCOLUMN
vim.opt.signcolumn = "yes"

-- SCROLLING
vim.opt.scrolloff = 8

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
-- I never use folding, there must be a reason that others find it useful!


-- BACKUP/SWAPFILE/UNDO HISTORY
vim.opt.swapfile = false    -- swapfiles make you very angry very quickly
vim.opt.backup = false      -- default writebackup keeps a backup during write
vim.opt.undofile = true     -- autosave undo history to undofile, restore with file

-- COMMENTS
-- Neovim adds new line comment symbols after every <CR> at EOL
-- Similarly, "o" in N to insert a new line and start typing, comment symbols added.
-- its a frustration that needs a better solution (more elegant) than I have here...
vim.cmd[[set formatoptions-=r]]
vim.cmd[[set formatoptions-=o]]
-- But for now this works. TODO Needs to be based on a filetype list or similar

