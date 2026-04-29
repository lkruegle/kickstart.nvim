vim.pack.add({'https://github.com/MrcJkb/haskell-tools.nvim'})

-- HASKELL Configure hls separately without letting mason manage the install
-- This plays better with GHCUp
-- vim.lsp.config('hls', {
--   cmd = { 'haskell-language-server-wrapper', '--lsp' },
--   filetypes = { 'haskell', 'lhaskell' },
--   root_markers = { '*.cabal', 'stack.yaml', 'cabal.project', 'package.yaml', 'hie.yaml' },
--   settings = {
--     haskell = {
--       formattingProvider = 'hlint',
--     },
--   },
-- })
-- vim.lsp.enable('hls')

-- TODO: haskell tools for better lsp stuff than the above?
-- https://github.com/MrcJkb/haskell-tools.nvim


-- TODO: Add Hoogle integration
-- https://github.com/luc-tielen/telescope_hoogle


