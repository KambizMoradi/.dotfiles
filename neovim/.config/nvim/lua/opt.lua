local opt=vim.opt
--vim.opt.guicursor = ""
--vim.opt.colorcolumn = "80"

opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.undodir = os.getenv("XDG_CACHE_HOME") .. "/nvim/undodir"
opt.fileformats = 'unix'

opt.number = true
opt.relativenumber = true
opt.smartindent = true
opt.wrap = false

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = false
opt.smartcase = true
opt.encoding= "utf-8"

opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.scrolloff = 8

opt.updatetime = 50
--------------------------------------------
vim.cmd("syntax on")

--vim.keymap.set('n', '<F12>', ":w <bar> exec '!python3 '.shellescape('%')<CR>")
