vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.g.have_nerd_font = true

local o = vim.opt
o.number = true
o.relativenumber = true
o.undofile = true
o.ignorecase = true
o.smartcase = true
o.signcolumn = 'yes'
o.showmode = true
-- Enable mouse mode, can be useful for resizing splits for example!
o.mouse = 'a'
-- Enable break indent
o.breakindent = true
o.expandtab = true
-- TODO: Might want this to be dynamic
o.shiftwidth = 2
o.smartindent = true
o.termguicolors = true

o.updatetime = 250 -- Decrease update time
o.timeoutlen = 300 -- Decrease mapped sequence wait time

-- Configure how new splits should be opened
o.splitright = true
o.splitbelow = true

o.inccommand = 'split'

o.cursorline = true
o.guicursor = 'n-v-c-i:block'

o.scrolloff = 10

o.confirm = true

-- TODO: Do I want this
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  o.clipboard = 'unnamedplus'
end)

o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
