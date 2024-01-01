-- Alpha dashboard
-- TODO Add session management using Shaturneovim-session-manager

return {
    "goolord/alpha-nvim",
        dependencies = {"BlakeJC94/alpha-nvim-fortune"},
        config = function ()
            local dashboard = require("alpha.themes.dashboard")


            -- Set header
            dashboard.section.header.val = {
                "                                                     ",
                "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
                "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
                "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
                "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
                "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
                "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
                "                                                     ",
            }

            -- Set Menu
            dashboard.section.buttons.val = {
                dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
                dashboard.button( "f", "  > Find file", ":cd $HOME | Telescope find_files<CR>"),
                dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
                dashboard.button( "s", "  > Settings" , ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>"),
                dashboard.button( "q", "  > Quit NVIM", ":qa<CR>"),
            }

            local fortune = require("alpha.fortune")
                dashboard.section.footer.val = fortune()
                require ("alpha").setup(dashboard.opts)

            -- Disable folding in Alpha buffer
            vim.cmd([[
                autocmd FileType alpha setlocal nofoldenable
            ]])

        end
}
