local present, nvimtree = pcall(require, "nvim-tree")

if not present then
    return
end

nvimtree.setup()

local map = vim.keymap.set

--options = { noremap = true }
map('n', '<leader>t', ':NvimTreeFindFileToggle<cr>', {})
