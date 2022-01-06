local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup({function(use)
    use 'wbthomason/packer.nvim'
    use 'simrat39/symbols-outline.nvim'
    use 'tpope/vim-sleuth'
    use 'puremourning/vimspector'
    use 'tpope/vim-surround'

    use {
        'neoclide/coc.nvim',
        branch = 'release',
    }

    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('config.plugins.nvim-tree')
        end
    }

    use {
        'folke/which-key.nvim',
        config = function()
            require('config.plugins.which-key')
        end
    }

    use {
        'phaazon/hop.nvim',
        config = function()
            require('hop').setup()
        end
    }

    use {
        'skywind3000/asynctasks.vim',
        requires = 'skywind3000/asyncrun.vim',
        config = function()
            require('config.plugins.asynctasks')
        end
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = 'nvim-lua/plenary.nvim',
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use {
        'ahmedkhalf/project.nvim',
        config = function()
            require('project_nvim').setup()
            require('telescope').load_extension('projects')
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function()
            require('config.plugins.lualine')
        end
    }

    use {
        'lewis6991/gitsigns.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function()
            require('gitsigns').setup {
                keymaps = {},
            }
        end
    }

    use {
        'kevinhwang91/nvim-bqf',
        ft = 'qf',
    }

    use {
        'akinsho/toggleterm.nvim',
        config = function()
            require('config.plugins.toggleterm')
        end
    }

    use {
        'LunarVim/onedarker',
        config = function()
            vim.cmd('colorscheme onedarker')
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require('config.plugins.nvim-treesitter')
        end
    }

    use {
        'akinsho/bufferline.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('config.plugins.bufferline')
        end
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end,
config = {
    display = {
        open_fn = function()
            return require('packer.util').float { border = 'none' }
        end,
    },
}})
