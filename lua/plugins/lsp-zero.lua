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
            -- Completion plugins here
            -- For Snippets
            -- Snippet plugins here
        },
        -- Configure LSP-ZERO -one ring to rule them all
        config = function()
            local lsp_zero = require("lsp-zero")
            -- then only setup keybindings when an LSP is active...
            lsp_zero.on_attach(function(client, bufnr)
                -- see :help lsp-zero-keybindings
                -- to learn the available actions
                lsp_zero.default_keymaps({ buffer = bufnr })
            end)

            require("mason").setup({})
            require("mason-lspconfig").setup({
                -- language servers and handlers setup here-->
                ensure_installed = {
                "lua_ls",
                "html",
                }, -- TODO add "EFM"
                handlers = {
                    lsp_zero.default_setup,
                    lua_ls = function()
                        -- Should deal with vim global undefined error
                        local lua_opts = lsp_zero.nvim_lua_ls()
                        require("lspconfig").lua_ls.setup(lua_opts)
                    end,
                },
            })


        end
}

