-- #Neotree toggle
vim.keymap.set('n', '<leader>e', '<CMD>Neotree toggle=true<CR>', { desc = 'Toggle Neotree' })
-- #Navigate buffers
-- ##Focus next buffer
vim.keymap.set('n', 'L', '<CMD>bn<CR>', { desc = 'Toggle Neotree' })
-- ##Focus previous buffer
vim.keymap.set('n', 'H', '<CMD>bp<CR>', { desc = 'Toggle Neotree' })
-- #Delete buffers
-- ##Delete current buffer
vim.keymap.set('n', '<leader>bd', function()
  vim.api.nvim_buf_delete(0, { force = true })
end, { desc = '[D]elete current buffer' })
-- ##Delete ALL buffers EXCEPT current one
vim.keymap.set('n', '<leader>bD', function()
  local cur = vim.api.nvim_get_current_buf()
  local bufs = vim.api.nvim_list_bufs()
  for _, v in ipairs(bufs) do
    if vim.api.nvim_buf_is_loaded(v) and v ~= cur then
      vim.api.nvim_buf_delete(v, { force = true })
    end
  end
end, { desc = '[D]elete ALL buffers except current' })
-- #New buffers
-- ##Terminal
vim.keymap.set('n', '<leader>nt', function()
  vim.cmd 'term'
  vim.cmd 'startinsert'
end, { desc = '[T]erminal' })
