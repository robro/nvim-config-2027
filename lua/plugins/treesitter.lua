vim.pack.add({
  'https://github.com/nvim-treesitter/nvim-treesitter'
})

local ts = require('nvim-treesitter')
ts.setup({
  install_dir = vim.fn.stdpath('data') .. '/site'
})
ts.install {
  'odin',
  'vim',
  'regex',
  'lua',
  'bash',
  'markdown',
  'markdown_inline',
}
