vim.o.guifont = "Hack Nerd Font Mono:h20"

vim.opt.clipboard = 'unnamedplus' -- use system clipboard
vim.opt.completeopt = { 'menu', 'menuone', 'noselect' }
vim.opt.mouse = 'a'               -- allow the mouse to be used in Nvim

vim.o.number = true
vim.opt.cursorline = true -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true -- open new vertical split bottom
vim.opt.splitright = true -- open new horizontal splits right

vim.o.encoding = 'utf-8'

vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4

vim.o.shiftwidth = 4
vim.o.signcolumn = "yes"
vim.o.autoindent = true

vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.showmatch = true
vim.o.history = 1000

vim.o.swapfile = false
vim.o.backup = false
vim.o.writebackup = false
vim.o.showmode = false

vim.o.wrap = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

