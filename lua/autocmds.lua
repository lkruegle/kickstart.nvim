-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

function TrimWhitespace()
  -- Removes trailing whitespace from current buffer
  -- Saves and restores cursor position from before call
  vim.cmd 'let cursor = winsaveview()'
  vim.cmd 'keeppatterns %s/\\s\\+$//e'
  vim.cmd 'call winrestview(cursor)'
end
vim.api.nvim_create_autocmd('BufWritePre', { callback = TrimWhitespace })

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc><esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'JK', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'
