-- Autotags will autoclose and autorename HTML, XML,md, CSS, PHP, JS, etc
-- Useful for front-end work

return {
    "windwp/nvim-ts-autotag",
    lazy = false,
    opts = {},
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
}
