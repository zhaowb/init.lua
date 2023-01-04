-- add autocmd to trim trailing space chars before write
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    pattern = { "*.py", "*.c", "*.h" },
    command = [[%s/\s\+$//e]],
})
