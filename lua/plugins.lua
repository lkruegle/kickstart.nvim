-- Include BEEG BOI plugins
require('plugins/treesitter')
require('plugins/toggleterm')
require('plugins/which-key')
require('plugins/telescope')
require('plugins/lsp')


-- Install teeny tiny baby boi plugins
vim.pack.add({
  'https://github.com/stevearc/oil.nvim',
  'https://github.com/nvim-mini/mini.icons',
  'https://github.com/lewis6991/gitsigns.nvim',
})

-- Configure small, simple to include plugins
require('mini.icons').setup({})

require('oil').setup({
  default_file_explorer = true,
  columns = { 'icon' },
  view_options = { show_hidden = true },
  keymaps = { ['q'] = { 'actions.close', mode = 'n' }}
})
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

require('gitsigns').setup({
  signs = {
    add = { text = '+' },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  },
})
