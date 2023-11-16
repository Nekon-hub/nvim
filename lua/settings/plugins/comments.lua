-- Lazy load the COMMENTS.NVIM plugin
-- based on events, in this case opening a buffer or create new file
-- TODO taken from Josean, but "event" is daft, change to keymap gcc or others
-- BufreadPre will always be triggered, or you are in a Bufnewfile!
-- Or simply remove the event

return {
    "numToStr/Comment.nvim",
    event = { "BufreadPre", "BufNewFile", },
    config = function()
        -- import comment plugin settings
        local comment = require("Comment")
        -- enable comment
        comment.setup()
    end
}
