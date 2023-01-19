-- https://github.com/folke/dot/blob/master/config/nvim/lua/config/plugins/null-ls.lua
return {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'williamboman/mason.nvim',
            config = function()
                local mason = require("mason")
                mason.setup()
                -- following logic are copied from mason-lspconfig/ensure_installed.lua
                local make_sure_install = {
                    "isort", "black", "ruff"
                }
                local mason_reg = require("mason-registry")
                local notify = require "mason-core.notify"
                for _, pkg_name in ipairs(make_sure_install) do
                    local ok, pkg = pcall(mason_reg.get_package, pkg_name)
                    if ok then
                        if not pkg:is_installed() then
                            notify(("[mason.nvim] installing %s"):format(pkg_name))
                            pkg:install {}
                        end
                    end
                end
            end
        },
    },
    config = function()
        local nls = require("null-ls")
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        nls.setup({
            sources = {
                -- [isort]
                -- rely on external 'isort' command
                -- either use mason install isort as above, or
                -- use `pipx install isort` to make isort globally available
                nls.builtins.formatting.isort,
                nls.builtins.formatting.black,
                nls.builtins.formatting.ruff,
                nls.builtins.diagnostics.ruff,
            },
            -- format before save, copied from
            -- https://github.com/jose-elias-alvarez/null-ls.nvim/wiki/Formatting-on-save
            on_attach = function(client, bufnr)
                if client.supports_method("textDocument/formatting") then
                    vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
                    vim.api.nvim_create_autocmd("BufWritePre", {
                        group = augroup,
                        buffer = bufnr,
                        callback = function()
                            vim.lsp.buf.format({ bufnr = bufnr })
                        end,
                    })
                end
            end,
        })
    end
}
