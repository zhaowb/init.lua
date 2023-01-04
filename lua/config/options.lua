-- vim.opt.guicursor = ""  -- insert mode use same cursor as normal mode

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false -- do not hightlight search
vim.opt.incsearch = true -- select as search typing

vim.opt.termguicolors = true

vim.opt.scrolloff = 8 -- keep 8 lines when scroll
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@") -- include '@' in filename pattern

vim.opt.updatetime = 50 -- nothing typed in 50ms, write swap file to disk
-- vim.opt.colorcolumn = "80"  -- hightlight column 80
-- -- python lsp is confused after highlight column
