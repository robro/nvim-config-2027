vim.pack.add{ 'https://github.com/stevearc/oil.nvim' }

require('oil').setup({
    columns = {
        "permissions",
        -- "size",
        -- "mtime",
        "icon",
    },
    view_options = {
        show_hidden = true,
    },
})

local set = vim.keymap.set

-- Open parent directory in current window
set('n', '-', '<cmd>Oil<cr>', { desc = 'Open parent directory' })
