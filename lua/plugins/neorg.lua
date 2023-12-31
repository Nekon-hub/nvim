-- NEORG - An Organised Future
-- When your TODO LIST and Neovim combine, its like magic in your fingertips!
-- a genuine revelation in remembering and organising all of the things!

return {
    "nvim-neorg/neorg",
        build = ":Neorg sync-parsers",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {}, -- Loads default behaviour
                    ["core.concealer"] = {}, -- Adds pretty icons to your documents
                    ["core.dirman"] = { -- Manages Neorg workspaces
                        config = {
                            workspaces = {
                                projects = "~/Notes/Projects",
                                home = "~/Notes/Home",
                                archive = "~/Notes/Archive",
                                journal = "~/Notes",
                            },
                        },
                    },
                    ["core.mode"] = {},
                    ["core.integrations.treesitter"] = {},
                    ["core.completion"] = {
                        config = {
                            engine = "nvim-cmp",
                            name = "[neorg]",
                        },
                    },
                    ["core.journal"] = {
                        config = {
                            journal_folder = "Journal",
                            template_name = {"template.norg"},
                        },
                    },
                    ["core.neorgcmd"] = {},
                    ["core.neorgcmd.commands.module.list"] = {},
                    ["core.ui.calendar"] = {},
                },
            }
        end,

}

