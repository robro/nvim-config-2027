local colorscheme = 'tokyonight-night'

vim.g.mapleader = " "

require('core')
require('plugins')

vim.lsp.enable({
  'lua_ls',
  'ols',
})

vim.cmd.colorscheme(colorscheme)
