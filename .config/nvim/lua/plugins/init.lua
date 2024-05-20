-- manage plugins

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
end
    

return require('packer').startup(function(use)
    -- My plugins here
  
    -- let packer manage itself
    use 'wbthomason/packer.nvim'

    -- OneNord Theme
    use 'rmehri01/onenord.nvim'

    -- NvimTree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        tag = 'nightly'
    }


    -- lualine status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    
    -- display a bufferline
    use {
        "akinsho/bufferline.nvim",
        tag = "v2.*",
        requires = "kyazdani42/nvim-web-devicons"
    }

    -- use treesitter for language parsing
    use {
        "nvim-treesitter/nvim-treesitter",
        run = function() require("nvim-treesitter.install").update({ with_sync = true }) end,
    }


    -- trouble => show diagnostics, etc
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons"
    }

    use {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        requires = "nvim-lua/plenary.nvim"
    }

    use {
        "nvim-telescope/telescope-fzf-native.nvim",
        run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build"
    }

    -- TODO: Figure out how to get the lsp working
    use "neovim/nvim-lspconfig"
    
    -- use snippy as snippet plugging
    use "dcampos/nvim-snippy"
    use "dcampos/cmp-snippy"

    -- use cmp for autocomplete
    use {
        "hrsh7th/nvim-cmp",
        requires = { 
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-nvim-lua"
        }
    }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end

end)
