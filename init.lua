require('options')
require('keymaps')
require('autocmds')
require('plugins')
require('ui')

--[[
-- Configuration precedence rules to keep in mind (Generally):

   options/keymaps (independent)
-> plugin manager
-> treesitter
-> LSP (requires language servers)
-> completion (requires LSP)
-> UI components
--]]
