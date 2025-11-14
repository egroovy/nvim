-- Normal vim keybinds
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>") -- Set ESC to remove highlights after searching
vim.keymap.set("i", "jk", "<ESC>") -- Set 'jk' to bring you back to normal mode
vim.keymap.set("n", "<CR>", "o<ESC>k", {desc = "Insert line below and stay in normal mode"})
vim.keymap.set("n", "<S-CR>", "O<ESC>j", {desc = "Insert line above and stay in normal mode"})


-- Telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>lg", builtin.live_grep, { desc = "Telescope live grep" }) -- requires ripgrep installed on macos "brew install ripgrep"
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch [K]eymaps" })


-- Toggle virtual text
vim.keymap.set("n", "<leader>vf", "<cmd>lua vim.diagnostic.config({virtual_text = false})<CR>", { desc = "Toggle virtual text off"})
vim.keymap.set("n", "<leader>vt", "<cmd>lua vim.diagnostic.config({virtual_text = true})<CR>", { desc = "Toggle virtual text on"})

