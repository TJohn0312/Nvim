vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- colorscheme
    use ({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use { "folke/tokyonight.nvim" }
    use { "ellisonleao/gruvbox.nvim" }
    use { "xiyaowong/nvim-transparent" }
    use { "lunarvim/darkplus.nvim" }

    use { "savq/melange-nvim" }
    use { "olivercederborg/poimandres.nvim" }
    use { "rebelot/kanagawa.nvim" }
    use { "sainnhe/everforest" }
    use { "daschw/leaf.nvim" }
    use { "Mofiqul/dracula.nvim" }
    use { "EdenEast/nightfox.nvim" }
    use { "NTBBloodbath/doom-one.nvim" }

    use { "ThePrimeagen/vim-be-good" }




    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use ('nvim-treesitter/playground')
    use ('theprimeagen/harpoon')
    use ('mbbill/undotree')
    use ('tpope/vim-fugitive')
    use { "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end }
    use { 'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end }

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    --lsp-zero
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional
            {'neovim/nvim-lspconfig'},             -- Required

            -- Autocompletion
            {'hrsh7th/cmp-nvim-lsp'}, -- Required
            {'hrsh7th/nvim-cmp'},     -- Required
            {'L3MON4D3/LuaSnip'},     -- Required
    }}
    -- Cmp
    use {'hrsh7th/cmp-buffer'}
    use {'hrsh7th/cmp-path'}
    use {'hrsh7th/cmp-cmdline'}
    --  Luasnip
    use {'saadparwaiz1/cmp_luasnip'}
    use {'rafamadriz/friendly-snippets'} -- a bunch of snippets to use

    -- Dap
    use { 'rcarriga/nvim-dap-ui', requires = {'mfussenegger/nvim-dap'}}
    -- use {'mfussenegger/nvim-dap'}

    use { 'christoomey/vim-tmux-navigator'}
    -- obsidian
    use({
        "epwalsh/obsidian.nvim",
        tag = "*",  -- recommended, use latest release instead of latest commit
        requires = {
            -- Required.
            "nvim-lua/plenary.nvim",

            -- see below for full list of optional dependencies 👇
        },
    })
end
)
