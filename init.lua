vim.g.python3_host_prog = os.getenv("HOME") .. "/.venv/nvim/bin/python"
-- https://github.com/folke/dot/blob/master/config/nvim/init.lua
-- https://github.com/folke/lazy.nvim#-structuring-your-plugins
vim.g.mapleader = " " -- make sure to set `mapleader` before lazy so your mappings are correct
require("config.lazy")
require("config.options")  -- vim.opt.*
vim.api.nvim_create_autocmd("User", {
    pattern = "VeryLazy",
    callback = function()
        -- require("util").version()
        require("config.commands")
        require("config.mappings")
    end,
})

