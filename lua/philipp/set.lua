vim.opt.relativenumber = true
vim.opt.nu = true
vim.opt.mouse = c
vim.opt_local.conceallevel = 2

vim.opt.ignorecase = true
vim.opt.wrap = false 
vim.opt.cursorline = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.updatetime = 50

vim.opt.termguicolors = true

vim.opt.colorcolumn = "90"

vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldclose= "all"
