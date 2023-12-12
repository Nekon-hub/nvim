-- TELESCOPE is a Neovim UI on steroids.
-- Who knew incremental search could look this good?
-- It may become the UI of choice for all things neovim.


-- Load Telescope
return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
-- or                              , tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' },
}


