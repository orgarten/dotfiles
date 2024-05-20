-- load settings
require('settings.options')
-- keymapping must be loaded before plugins in order to have the change of the leader key active in the plugin related keymaps
require('settings.maps')

-- load plugins
require('plugins')

vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost init.lua source <afile> | PackerCompile | PackerUpdate
    augroup END
]])

require('plugins.configs.onenord')
require('plugins.configs.nvimtree')
require('plugins.configs.lualine')
require('plugins.configs.bufferline')
require('plugins.configs.nvim-treesitter')
require('plugins.configs.trouble')
require('plugins.configs.telescope')
require('plugins.configs.nvim-cmp')
