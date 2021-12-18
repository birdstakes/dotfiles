local fn = vim.fn
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').startup({function(use)
    use 'wbthomason/packer.nvim'
    use 'simrat39/symbols-outline.nvim'
    use 'tpope/vim-sleuth'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'
    use 'folke/lua-dev.nvim'
    use 'puremourning/vimspector'
    use 'ray-x/lsp_signature.nvim'
    use 'tpope/vim-surround'

    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-path'
    use {
        'hrsh7th/nvim-cmp',
        config = function()
            require('config.plugins.nvim-cmp')
        end
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
        'jose-elias-alvarez/null-ls.nvim',
        requires = { 'nvim-lua/plenary.nvim', 'neovim/nvim-lspconfig' },
    }

    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('trouble').setup()
        end
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
