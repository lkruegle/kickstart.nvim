vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.keymap.set('n', '<leader>d', vim.diagnostic.setloclist, { desc = 'Open [D]iagnostic Quickfix list' })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<leader>w', ':w<enter>', { desc = 'Write current buffer' })
vim.keymap.set('n', '<leader>q', ':q<enter>', { desc = 'Close current buffer' })
vim.keymap.set('n', '<leader>x', ':wq<enter>', { desc = 'Write and Close current buffer' })
