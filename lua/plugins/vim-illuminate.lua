-- Vim-Illuminate highlights all instances of a word in a file
-- There maye be a way to do this in Options but this is easy!

return {
    "RRethy/vim-illuminate",
    lazy = false,
    config = function()
        -- default configuration, it just works!
        require("illuminate").configure({})
    end
}

