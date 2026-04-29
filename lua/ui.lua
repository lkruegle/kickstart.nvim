-- Repository of colorschemes can be found at
-- https://vimcolorschemes.com
-- https://github.com/vimcolorschemes/vimcolorschemes

vim.pack.add({
  'https://github.com/sainnhe/everforest',

  -- Pixel is a reflexive ANSI theme, forces nvim to
  -- use the colors provided by the terminal's theme.
  'https://github.com/bjarneo/pixel.nvim',
})

vim.o.background = 'dark'

vim.g.everforest_background = 'hard'
vim.cmd.colorscheme 'everforest'

-- TODO: Some weird issue with having a lighter background?
-- vim.cmd.colorscheme 'pixel'

vim.pack.add({'https://github.com/nvim-lualine/lualine.nvim'})
require('lualine').setup()

