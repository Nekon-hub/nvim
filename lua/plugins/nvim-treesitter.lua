return {
    {
        "nvim-treesitter/nvim-treesitter",
        lazy = false,
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "windwp/nvim-ts-autotag",
        },
        config = function()
            -- import nvim-treesitter plugin
            local treesitter = require("nvim-treesitter.configs")

            -- configure treesitter
            treesitter.setup({ -- enable syntax highlighting
                highlight = {
                    enable = true,
                    additional_vim_rgex_highlighting = false,
                },
                -- enable indent ation
                indent = {
                    enable = true,
                },
                -- enable autotagging (w/ nvim-ts-autotag plugin)
                autotag = {
                    enable = true,
                },
                -- ensure these language parsers are installed
                ensure_installed = {
                    "html",
                    "css",
                    "bash",
                    "lua",
                    "vim",
                    "gitignore",
                    "yaml",
                    "toml",
                    "php",
                    "vimdoc",
                    "python",
                    "rust",
                    "haskell",
                    "json",
                    "sql",
                    "twig",
                    "c",
                    "cpp",
                },
                incremental_selection = {
                    enable = true,
                    keymaps   = {
                        init_selection = "gnn",
                        node_incremental = "grn",
                        scope_incremental = "grc",
                        node_decremental = "grm",
                    },
                },
            })
        end,
    },
}
