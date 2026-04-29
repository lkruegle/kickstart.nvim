-- PYTHON: Look into venv-selector.nvim
-- TODO: This doesn't currently work but not gonna look at it now
vim.lsp.config('pyright', {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', '.git' },
  settings = {
    python = {
      pythonPath = (function()
        local venv = os.getenv('VIRTUAL_ENV')
        if venv then
          return venv .. '/bin/python'
        end
        -- check for a local .venv directory
        local local_venv = vim.fn.getcwd() .. '/.venv/bin/python'
        if vim.fn.executable(local_venv) == 1 then
          return local_venv
        end
        return vim.fn.exepath('python')
      end)(),
    },
  },
})
vim.lsp.enable('pyright')
