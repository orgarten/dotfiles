-- arguments to map: "mode", "key sequence", "command to execute", "option"
local map = vim.keymap.set

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

options = { noremap = true }
-- tab actions
map('n', '<leader>m', ':tabnext<cr>', options)
map('n', '<leader>n', ':tabnew<cr>', options)
map('n', '<leader>b', ':tabprevious<cr>', options)


