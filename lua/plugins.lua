-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- install the packer.nvim plugin using...
-- git clone --depth 1 https://github.com/wbthomason/packer.nvim\ ~/.local/share/nvim/site/pack/packer/start/packer.nvim

-- PACKER
-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

-- TELESCOPE
    use {'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
}

-- TREESITTER
use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
}
-- Plus TREESITTER PLAYGROUND
-- TODO - TS Playground is deprecated and this Plugin needs to be removed
-- In the meantime, leave it here, but use:-
-- :Inspect
-- :InspectTree
-- :EditQuery (Nvim .0.10+) This the point at which TSPlayground can be removed
use 'nvim-treesitter/playground'

-- LSP - Language Server Protocol
-- USES LSP-ZERO
use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.api.nvim_command, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}


-- ============
-- COLORSCHEMES
-- ============
-- NORD
use 'shaunsingh/nord.nvim'

-- ROSE PINE
use({ 'rose-pine/neovim', as = 'rose-pine' })

-- NO CLOWN FIESTA
use 'aktersnurra/no-clown-fiesta.nvim'

-- NVIM-SUBSTRATA
use 'kvrohit/substrata.nvim'
-- set termguicolors " Only needed in terminals (24-bit colors)
-- colorscheme substrata


-- todo add in sainnhe/everforest or mcchish/zenbone with evergreen variant
-- todo add in fenetikm/falcon, although rose-pine does good purple
-- ============


-- lualine
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
end)
