-- Highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('highlight_yank', { clear = true }),
  callback = function()
    vim.hl.hl_op({
      higroup = 'IncSearch',
      timeout = 100,
    })
  end,
})
