-- LSP all in one place using LSP-Zero.
-- What madness is this? A single file? No folders? Too complicated?
-- The payoff is a UI of great beauty and functionality.

-- Install the PLUGINS for LSP support
return {
    "VonHeikemen/lsp-zero.nvim",
        dependencies = {
            -- for LSP Support
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            --For Autocompletion
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            -- For Snippets
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip"
        },
        -- Configure LSP-ZERO - one ring to rule them all!
        config = function()
            local lsp_zero = require("lsp-zero")
            -- then only setup keybindings when an LSP is active...
            lsp_zero.on_attach(function(client, bufnr)
                -- see :help lsp-zero-keybindings
                -- to learn the available actions
                lsp_zero.default_keymaps({ buffer = bufnr })
            end)
            -- MASON and MASON_LSPCONFIG to automagically install LSPs
            require("mason").setup({})
            require("mason-lspconfig").setup({
                -- language servers and handlers setup here-->
                ensure_installed = {
                "lua_ls",
                "html",
                "cssls",
                }, -- TODO add "EFM" as a catchall?
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        -- Should deal with vim global undefined error
                        local lua_opts = lsp_zero.nvim_lua_ls()
                        require("lspconfig").lua_ls.setup(lua_opts)
                    end,
                    html = function()
                        require'lspconfig'.html.setup{}
                    end,
                    cssls = function()
                        require'lspconfig'.cssls.setup{}
                    end,
                },
            })
            -- Setup NVIM-CMP for completion using LUASNIP
            local cmp = require("cmp")
            local luasnip = require("luasnip")
            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end
                },
                window = {
                -- completion = cmp.config.window.bordered(),
                -- documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-p>"] = cmp.mapping.select_prev_item(),
                    ["<C-n>"] = cmp.mapping.select_next_item(),
                    ["<C-space>"] = cmp.mapping.complete(),
                    ["<C-e>"] = cmp.mapping.abort(), -- Accept current selection
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                }),
                sources = {
                    { name = "nvim-lsp" },
                    { name = "luasnip" },
                    { name = "buffer" },
                    { name = "path" },
                    { name = "nvim-lua" },
                    -- more sources
                },
            })
        end
}

