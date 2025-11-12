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
vim.o.timeoutlen = 200

-- case insensitive searching, kickstart has this so it's probably useful. not sure where exactly it applies
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.confirm = true
vim.o.timeoutlen = 300

-- set new windows to open to the bottom and right instead of top and left
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.termguicolors = true
vim.cmd.colorscheme("midnight")

vim.diagnostic.config {
    severity_sort = true,
    float = { border = 'rounded', source = 'if_many' },
    underline = { severity = vim.diagnostic.severity.ERROR },
    signs = vim.g.have_nerd_font and {
        text = {
            [vim.diagnostic.severity.ERROR] = '󰅚 ',
            [vim.diagnostic.severity.WARN] = '󰀪 ',
            [vim.diagnostic.severity.INFO] = '󰋽 ',
            [vim.diagnostic.severity.HINT] = '󰌶 ',
        },
    } or {},
    virtual_text = {
        source = 'if_many',
        spacing = 2,
        format = function(diagnostic)
            local diagnostic_message = {
                [vim.diagnostic.severity.ERROR] = diagnostic.message,
                [vim.diagnostic.severity.WARN] = diagnostic.message,
                [vim.diagnostic.severity.INFO] = diagnostic.message,
                [vim.diagnostic.severity.HINT] = diagnostic.message,
            }
            return diagnostic_message[diagnostic.severity]
        end,
    },
}

