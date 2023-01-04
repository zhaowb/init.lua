-- https://github.com/folke/dot/blob/master/config/nvim/lua/config/plugins/null-ls.lua
return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = function()
        local nls = require("null-ls")
        nls.setup({
            sources = {
                -- [isort]
                -- rely on external 'isort' command
                -- use `pipx install isort` to make isort globally available
                nls.builtins.formatting.isort,
            },
        })
    end
}
