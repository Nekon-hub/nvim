" ===========================
" An Init.vim
" My Custom Neoviom starter file
" by Neil Connolly
" ===========================
" With thanks to DT, Doug Black, Ellen Gummeson, Daniel Miessler, Drew Neil et al

" Avoid stating setting if it is actually the default!
" (unless need for .vimrc)
" TODO Get a default settings list
" TODO Need to go through the Neovim defaults and refine this file...
" But also need to make sure it works in Vim as well as Neovim NB// Vim 9.0!


" =============================
" SETTING SOME GENERAL DEFAULTS
" =============================
" NB Neovim does have 'STRONG' defaults...
" But by setting some here it means I could copy to a vimrc and be mainly good
" to go

" Drop Vi compatibility, must be IMproved (Neovim default) 
set nocompatible

" Use Unicode (Neovim default)
set encoding=utf-8

" Show syntax (Neovim default)
syntax enable

" Turn on filetype detection and indentation (Neovim default)
filetype indent on
" Required by NerdCommenter
filetype plugin on

" Reload files modified outside of Vim buffer (Neovim default)
set autoread

" Line Numbers
set number
set relativenumber

" Allow unsaved work in buffers ('hidden') 
set hidden

" Cursor line shows in a different colour
set cursorline
" Winbar shown to the top right with modification state and filename
set winbar=%=%m\ %f

" Column shown for 80 characters, soft wrap at page edge, don't break words 
set colorcolumn=80
set wrap
set linebreak
" Allows movement within a wrapped line
" nnoremap j gj
" nnoremap k gk
" Allows insertion of lines below and above, without moving cursor
" I think I prefer 'oo' and 'OO' as the mappings. This is a keeper! 
" nnoremap <silent> <leader>o :<C-u>call append(line("."),   repeat([""], v:count1))<CR>
" nnoremap <silent> <leader>O :<C-u>call append(line(".")-1, repeat([""], v:count1))<CR> 



" Visual autocomplete for command line (Neovim default)
set wildmenu

" Stop re-draws at odd times, probably not necessary for Neovim
set lazyredraw

" Highlight parenthesis match, this may be default, check
set showmatch

" Keep 5 lines visible when CTRL+F to end of file
set scrolloff=5

" ===============
" TABS AND SPACES
" ===============
set tabstop=4		" 4 spaces to a tab
set softtabstop=4	" also applies when editing
set expandtab		" A TAB is now ACTUALLY 4 spaces


" ================
" BLANK CHARACTERS - listchars + set list
" ================
" defaults to "tab:> ,trail:-,nbsp:+" But may be shown in background colour!
" TODO need better settings, espcially with my TAB settings
" set listchars=?????
" then use the command ':set list' to actually show the marks.


" =======
" FOLDING
" =======
" TODO Sensible folding settings


" ===============
" SEARCH SETTINGS
" ===============
" Incremental search and highlighting in search
set incsearch		" Search as characters are entered
set hlsearch		" Highlight matches as typed
" Highlight OFF, especially when resourcing init.vim!
set hls
let @/ = ""
" Ignore letter case in search
set ignorecase



" =================
" PLUGINS LIVE HERE
" =================

" Using VIM-PLUG by junegunn
" or could switch to native plugin manager PACKAGE

" Plugins will be downloaded under the specified directory
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" SYNTAX
Plug 'vim-syntastic/syntastic'
" Plug 'nvim-treesitter/nvim-treesitter'

" COMMENTS
Plug 'tpope/vim-commentary'
" gcc to comment out a line (takes a count)
" gc comment out the actions of a motion eg gcap comment around paragraph
" VISUAL MODE gc in operator pending mode to target a comment
" Use as a command eg :7,17Commentary
" :global invocation eg :g/TODO/Commentary

" NERDTREE, just better... revert to NETRW by uncommenting its section below
Plug 'Preservim/nerdtree'
" Because icons look good
Plug 'ryanoasis/vim-devicons'

" COLORSCHEME PLUGINS
Plug 'arcticicestudio/nord-vim'
Plug 'whatyouhide/vim-gotham'
Plug 'cocopon/iceberg.vim'
Plug 'jsit/toast.vim'       "Is the best light variant for nvim! Sexy khaki
Plug 'sainnhe/everforest'

" STATUSLINE PLUGINS
Plug 'itchyny/lightline.vim'
" Plug 'vim-airline/vim-airline'

" ORG-MODE
" I would really like to get a rudimentaruy ORG-MODE working in neovim

" Plugin List ends here. Plugins become visible to Vim after this call
call plug#end()



" =========================
" PLUGIN SETTINGS LIVE HERE
" =========================

" NERDTREE SETTINGS
" Open NERDTree with hidden files shown. Toggle Hidden with Shift+i
" TODO let NerdTreeShowHidden=1 (adds crazy square brackets!)
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" TODO nnoremap <C-f> :NERDTreeFind (clashes with page fiorward!)


" ====================
" COLORSCHEME SETTINGS (Nord, Iceberg, Toast and Gotham are all plugins) 
" ====================
" Why do we care so much about colorschemes?
" Easy on the eye? Extension of our character? Beauty in code?
colorscheme nord 

" STATUSLINE COLORS
" let g:airline_theme = 'gotham'
" let g:gotham_airline_emphasised_insert = 0

let g:lightline = { 'colorscheme': 'nord' }


" =========================
" To use NETRW not NERDTREE
" =========================
" Some NETRW settings that make it more like NERDTREE
" Create a Nerdtree style file tree
" let g:H00E3A0035078284netrw_liststyle = 4
" Hide the files we dont want to show TODO there may be more, eg Rust
" let g:netrw_list_hide = '.git,.sass-cache,'
" Set NETRW widow size in %
" let g:netrw_winsize = 25
" Open new buffers in a sensible place, vertical split, right
" let g:netrw_browse_split = 4



" ==========================
" REMAPPINGS JUST A FEW KEYS
" ==========================
" ESCAPE - a quick finger roll
imap jk <Esc>
imap kj <Esc>
vmap jk <Esc>
vmap kj <Esc>

" LEADER - \ is difficult to hit cleanly and ' is easy and on home row
let mapleader="'"
" Map <Esc> to exit terminal includes JK Roll
:tnoremap <Esc> <C-\><C-n>
" Easy reload of nvim/init.vim
nnoremap <leader>sv :source $MYVIMRC<CR>

" Allows movement within a wrapped line
" nnoremap j gj
" nnoremap k gk
"
" =================
" END nvim/init.vim
" =================
