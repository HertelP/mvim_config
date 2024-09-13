vim.g.mapleader = " "
vim.keymap.set("n","<leader>e",vim.cmd.Ex)

vim.keymap.set("x","<leader>p","\"_dP")

vim.keymap.set("v","<",":m '>+1<CR>gv=gv")
vim.keymap.set("v",">",":m '<-2<CR>gv=gv")

vim.keymap.set("n","<C-d>","<C-d>zz")
vim.keymap.set("n","<C-u>","<C-u>zz")
vim.keymap.set("n","n","nzzzv")
vim.keymap.set("n","N","Nzzzv")

vim.keymap.set("n","<leader>y","\"+y")
vim.keymap.set("v","<leader>y","\"+y")
vim.keymap.set("n","<leader>Y","\"+Y")
vim.keymap.set("n","<leader>d","\"_d")
vim.keymap.set("v","<leader>d","\"_d")
vim.keymap.set("v","<leader>d","\"_d")

vim.keymap.set("n","<leader>O",":vsplit <CR> <C-W>l :ObsidianSearch <CR>")

vim.keymap.set("n","Q","<nop>")

vim.keymap.set("n","<leader>s",":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left>")

