vim.pack.add({'https://github.com/nvim-treesitter/nvim-treesitter'})
local languages = {
  'bash',
  'c',
  'diff',
  'html',
  'lua',
  'luadoc',
  'markdown',
  'markdown_inline',
  'query',
  'haskell',
  'vimdoc',
  'python',
  'agda',
  'ebnf',
  'yaml',
}
require('nvim-treesitter').setup({
  auto_install = true,
  ensure_installed = languages,
  highlight = { enable = true },
  indent = { enable = true },
})
