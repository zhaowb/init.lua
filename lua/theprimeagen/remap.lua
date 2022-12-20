
vim.g.mapleader = " "
vim .keymap.set("n", "<leader>pv", vim.cmd.Vex)  -- " pv" open file browser in vertical split
                                                 -- ":Rex" return to previous buffer

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- move selection down, with auto indent
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- move selection up, with auto indent

vim.keymap.set("n", "J", "mzJ`z")  -- normal J without move cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")  -- half page down + zz
vim.keymap.set("n", "<C-u>", "<C-u>zz")  -- half page up + zz
vim.keymap.set("n", "n", "nzzzv")  -- search next and zz (put current line in middle of screen) and zv (open fold if any)
vim.keymap.set("n", "N", "Nzzzv")  -- search back and zz + zv

-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function ()
--     require("vim-with-me").StopVimWithMe()
-- end)

vim.keymap.set("x", "<leader>p", "\"_dP")  -- paste replace selection without change buffer

vim.keymap.set("n", "<leader>y", "\"+y")  -- normal yank (copy) to system clipboard
                                          -- " yy" copy current line
                                          -- " y<CR>" copy current line and next line
                                          -- " y10j" copy 11 lines from current line
                                          -- " yap" copy current paragraph
vim.keymap.set("v", "<leader>y", "\"+y")  -- copy selection to system clipboard
vim.keymap.set("n", "<leader>Y", "\"+Y")  -- Y = "yy", copy current line to system clipboard

vim.keymap.set({"n", "v"}, "<leader>d", "\"_d")  -- delete without change buffer

vim.keymap.set("n", "Q", "<nop>")  -- disable Q. Q is to repeat last recorded register

-- vim.keymap.set("n", "C-f>", "<cmd>slient !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")  -- ?
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])  -- search/replace current word
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })  -- chmod +x current file

