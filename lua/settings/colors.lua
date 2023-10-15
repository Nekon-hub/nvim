-- SETTINGS FOR INSTALLED COLORSCHEMES PLUGINS


-- NO-CLOWN-FIESTA
require("no-clown-fiesta").setup({
  transparent = false, -- Enable this to disable the bg color
  styles = {
    -- You can set any of the style values specified for `:h nvim_set_hl`
    comments = {},
    keywords = {},
    functions = {},
    variables = {},
    type = { bold = true },
    lsp = { underline = true }
  },
})


-- ROSE-PINE
-- Options should be set before colorscheme is set - see lua/settings/options
require('rose-pine').setup({
	--- @usage 'auto'|'main'|'moon'|'dawn'
	variant = 'auto',
	--- @usage 'main'|'moon'|'dawn'
	dark_variant = 'main',
	bold_vert_split = false,
	dim_nc_background = false,
	disable_background = false,
	disable_float_background = false,
	disable_italics = false,

	--- @usage string hex value or named color from rosepinetheme.com/palette
	groups = {
		background = 'base',
		background_nc = '_experimental_nc',
		panel = 'surface',
		panel_nc = 'base',
		border = 'highlight_med',
		comment = 'muted',
		link = 'iris',
		punctuation = 'subtle',

		error = 'love',
		hint = 'iris',
		info = 'foam',
		warn = 'gold',

		headings = {
			h1 = 'iris',
			h2 = 'foam',
			h3 = 'rose',
			h4 = 'gold',
			h5 = 'pine',
			h6 = 'foam',
		}
		-- or set all headings at once
		-- headings = 'subtle'
	},

	-- Change specific vim highlight groups
	-- https://github.com/rose-pine/neovim/wiki/Recipes
	highlight_groups = {
		ColorColumn = { bg = 'foam', blend = 10},

		-- Blend colours against the "base" background
		CursorLine = { bg = 'foam', blend = 10 },
		StatusLine = { fg = 'love', bg = 'love', blend = 10 },
		CursorColumn = { bg = 'foam', blend = 10},
	}
})

-- NORD
-- Example config in lua
vim.g.nord_contrast = true
vim.g.nord_borders = false
vim.g.nord_disable_background = false
vim.g.nord_italic = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = false

-- Example for Headlines
--require("headlines").setup({
--    markdown = {
--        headline_highlights = {
--            "Headline1",
--            "Headline2",
--            "Headline3",
--            "Headline4",
--            "Headline5",
--            "Headline6",
--        },
--        codeblock_highlight = "CodeBlock",
--        dash_highlight = "Dash",
--        quote_highlight = "Quote",
--    },
--})

-- See READ.me for other settings eg: Lualine and Bufferline


-- NVIM-SUBSTRATA
vim.g.substrata_italic_comments = true
vim.g.substrata_italic_keywords = false
vim.g.substrata_italic_booleans = false
vim.g.substrata_italic_functions = false
vim.g.substrata_italic_variables = false
vim.g.substrata_transparent = true
vim.g.substrata_variant = "brighter"
-- TODO requires a lualine theme!
-- Otherwise its working really nicely, even the Lualine!

