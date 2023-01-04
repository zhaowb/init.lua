-- Any *.lua file under lua/config/plugins will be automatically loaded
-- See example https://github.com/folke/dot/blob/master/config/nvim/lua/config/plugins/null-ls.lua
return {
    "folke/which-key.nvim",
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        dependencies = {
            'nvim-lua/plenary.nvim'
        },
    },
    {
        'rose-pine/neovim',
        name = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    },
    'nvim-treesitter/playground',
    'theprimeagen/harpoon',
    'mbbill/undotree',
    -- 'tpope/vim-fugitive',
    'airblade/vim-gitgutter',
}
