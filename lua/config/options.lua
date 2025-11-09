vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- set line options 
vim.o.number = true
vim.o.relativenumber = true
vim.o.cursorline = true
vim.o.scrolloff = 999
vim.o.wrap = false

-- allow mouse mode
vim.o.mouse = "a"

-- sync os clipboard with nvim clipboard
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- indentation config
vim.o.breakindent = true
vim.o.tabstop = 4
vim.o.expandtab = true -- insert spaces instead of tab char
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- save undo history
vim.o.undofile = true

-- make update time faster, used for updating swap file to protect against crashes
vim.o.updatetime = 50

-- case insensitive searching, kickstart has this so it's probably useful. not sure where exactly it applies
vim.o.ignorecase = true
vim.o.smartcase = true

-- set new windows to open to the bottom and right instead of top and left
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.termguicolors = true
vim.cmd.colorscheme("midnight")
