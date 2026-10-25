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

-- Indentation overrides for filetypes
local small_tab_size = 2
local indent_group = vim.api.nvim_create_augroup("FileTypeIndentOverrides", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = indent_group,
  pattern = {
    "lua",
    "json",
  },
  callback = function()
    vim.opt_local.tabstop     = small_tab_size
    vim.opt_local.shiftwidth  = small_tab_size
    vim.opt_local.softtabstop = small_tab_size
  end,
})
