local colorscheme = 'tokyonight-night'

vim.g.mapleader = " "

require('core')
require('plugins')

vim.cmd.colorscheme(colorscheme)

vim.lsp.enable({
    'lua_ls',
    'ols',
})
