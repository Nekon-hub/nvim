-- Neorg  Journal means that it would useful to easilly access unicode
-- Hopefully this will do the job nicely

return {
    "cosmicboots/unicode_picker.nvim",
        dependencies = { "uga-rosa/utf8.nvim" },

    config = function ()
        local unicode_picker = require("unicode_picker")
        vim.keymap.set("i", "<C-u>", unicode_picker.unicode_chars, {})
    end

}
