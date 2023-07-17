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
    {
        -- see https://github.com/airblade/vim-gitgutter#getting-started
        -- for default key mappings
        -- "[c" and "]c" jump between hunks (a hunk is a block of change)
        -- "<leader>hp" preview
        -- "<leader>hs" stage
        -- "<leader>hu" undo change. WARN: cannot redo, use undotree for redo
        'airblade/vim-gitgutter',
        config=function ()
            -- use rg replace grep
            vim.g.gitgutter_grep = 'rg'
        end
    },
    { "lukas-reineke/indent-blankline.nvim" }
}
