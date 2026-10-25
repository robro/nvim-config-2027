local utils = require('core.utils')
local cmd = vim.api.nvim_create_user_command

cmd('AlignCursors', utils.align_cursors, {})
cmd('PackClean', utils.pack_clean, {})
