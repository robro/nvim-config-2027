local map = vim.keymap.set

-- Basics
map('n', '<leader>w', '<Cmd>write<CR>',   { desc = 'Write'})
map('n', '<leader>r', '<Cmd>restart<CR>', { desc = 'Restart'})
map('n', '<leader>q', '<Cmd>quit<CR>',    { desc = 'Quit'})
map('n', '<leader>Q', '<Cmd>quitall<CR>', { desc = 'Quit all'})

-- Clipboard
-- TODO: fix so it works properly with multicursors
-- map({'n', 'v', 'x'}, 'y', '"+y', { desc = 'Yank to clipboard' })
-- map({'n', 'v', 'x'}, 'd', '"+d', { desc = 'Delete to clipboard' })
-- map({'n', 'v', 'x'}, 'p', '"+p', { desc = 'Put from clipboard' })

-- Yank entire buffer
map('n', '<C-y>', 'ggVGy<C-o>', { desc = 'Yank entire buffer' })

-- Indent mode
map('v', '>', '>gv', { desc = 'Stay in indent mode'})
map('v', '<', '<gv', { desc = 'Stay in indent mode'})

-- Terminal mode
map('t', '<Esc>', [[<C-\><C-n>]], { desc = 'Return to Normal mode from Terminal mode' })

-- Remove unused packages
map('n', '<leader>pc', '<Cmd>PackClean<CR>', { desc = 'Remove unused packages' })

-- Multicursors
-- Add cursor and move up/down
map('n', '<C-k>', 'Qkq=', { desc = 'Add cursor and move up' })
map('n', '<C-j>', 'Qjq=', { desc = 'Add cursor and move down' })

-- Add cursor and move to next/prev word under cursor
-- TODO: fix for certain characters
map('n', '<C-n>', 'Q*<Cmd>nohlsearch<CR>q=', { desc = 'Add cursor and move to next word under cursor' })
map('n', '<C-p>', 'Q#<Cmd>nohlsearch<CR>q=', { desc = 'Add cursor and move to prev word under cursor' })

-- Place a cursor at {motion}
map({'n', 'x'}, '<C-q>', 'zq', { desc = 'Place cursor at {motion}' })

-- Clear search highlights and multicursors
map('n', '<Esc>', '<Cmd>nohlsearch|diffupdate|call nvim_buf_clear_namespace(0, nvim_create_namespace("nvim.multicursor"), 0, -1)|normal! <C-L><CR>', { desc = 'Clear search highlights and multicursors' })

-- Align multicursors
map('n', '<leader>a', '<Cmd>AlignCursors<CR>', { desc = 'Align multicursors' })
