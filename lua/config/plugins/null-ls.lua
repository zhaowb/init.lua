-- https://github.com/folke/dot/blob/master/config/nvim/lua/config/plugins/null-ls.lua
return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'williamboman/mason.nvim',
            config = function()
                mason = require("mason")
                mason.setup()
                make_sure_install = {
                    "isort",
                }
                mason_reg = require("mason-registry")
                for _, pkg in ipairs(make_sure_install) do
                    if not mason_reg.is_installed(pkg) then
                        vim.cmd("MasonInstall " .. pkg)
                    end
                end
            end
        },
    },
    config = function()
        local nls = require("null-ls")
        nls.setup({
            sources = {
                -- [isort]
                -- rely on external 'isort' command
                -- either use mason install isort as above, or
                -- use `pipx install isort` to make isort globally available
                nls.builtins.formatting.isort,
            },
        })
    end
}
