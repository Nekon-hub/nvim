-- Lazy load the COMMENTS.NVIM plugin
-- based on events, in this case opening a buffer or create new file
-- TODO taken from Josean, but "event" is daft, change to keymap gcc
-- BufreadPre would always be triggered, or you are in a Bufnewfile!
-- Or simply remove the event
-- TODO add the Comments.nvim helper section to "options"

return { "numToStr/Comment.nvim",
    opts = {
        -- add any options here
    },
    lazy = false,
}
