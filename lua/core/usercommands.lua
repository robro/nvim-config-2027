local utils = require('core.utils')

vim.api.nvim_create_user_command('AlignCursors', utils.align_cursors, {})
vim.api.nvim_create_user_command('PackClean', utils.pack_clean, {})
