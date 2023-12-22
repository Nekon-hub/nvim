-- NEORG - An Organised Future
-- Everything else is to get me to this place... the reinstall of NEORG...
-- a genuine revelation in organising my thoughts, my actions and my life!

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
                                main = "Notes/Main",
                                projects = "~/Notes/Projects",
                                home = "~/Notes/Home",
                                journal = "~/Notes/Journal",
                                archive = "~/Notes/Archive",
                            },
                        },
                    },
                    ["core.completion"] = {  -- A wrapper to interface with CMP
                        config = {
                            engine = "nvim-cmp",
                        },
                    },
                    -- TODO work with dates, then...
                    -- TODO add ["core.ui.calendar"] module for date UI
                }
            -- TODO add... run = ":Neorg sync-parsers", replaces "build ="???
            }
        end,
}
