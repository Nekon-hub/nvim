-- AUTOCLOSE parentheses
-- Simple yet effective
-- TODO is there an Autoclose method for LSP-ZERO?

return {
    "m4xshen/autoclose.nvim",
        config = {
            keys = {
                ["("] = { escape = false, close = true, pair = "()" },
                ["["] = { escape = false, close = true, pair = "[]" },
                ["{"] = { escape = false, close = true, pair = "{}" },

                [">"] = { escape = true, close = false, pair = "<>" },
                [")"] = { escape = true, close = false, pair = "()" },
                ["]"] = { escape = true, close = false, pair = "[]" },
                ["}"] = { escape = true, close = false, pair = "{}" },

                ['"'] = { escape = true, close = true, pair = '""' },
                ["'"] = { escape = true, close = true, pair = "''" },
                ["`"] = { escape = true, close = true, pair = "``" },
            },
            options = {
                disabled_filetypes = { "text" },
                disable_when_touch = false,
                touch_regex = "[%w(%[{]",
                pair_spaces = false,
                auto_indent = true,
                disable_command_mode = false,
            },
        }
}