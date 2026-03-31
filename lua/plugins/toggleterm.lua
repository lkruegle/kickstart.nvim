vim.pack.add({ 'https://github.com/akinsho/toggleterm.nvim' })

require('toggleterm').setup({
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  close_on_exit = true,
  start_in_insert = true,
  shade_terminals = true,
  insert_mappings = true,
  direction = 'horizontal',
  size = function(term)
    if term.direction == 'horizontal' then
      return 15
    elseif term.direction == 'vertical' then
      return o.columns * 0.4
    end
  end,
})

function _G.lazygit_toggle()
  local Terminal = require('toggleterm.terminal').Terminal
  local lazygit = Terminal:new {
    cmd = 'lazygit',
    hidden = true,
    direction = 'float',
    float_opts = {
      border = 'none',
      width = 100000,
      height = 100000,
    },
    on_open = function(_)
      vim.cmd 'startinsert!'
    end,
    on_close = function(_) end,
    count = 99,
  }
  lazygit:toggle()
end

vim.keymap.set('n', '<leader>gg', '<cmd>lua lazygit_toggle()<CR>', { desc = 'Launch LazyGit' })
