This is my Neovim config

# Plugins
`autopairs` - Adds closing character for symbols such as (, ", [, {  
`blink.cmp` - Auto completion from LSP and lazydev  
`gitsigns` - Add git symbols to gutter  
`lazydev` - For luaLS  
`mason` - Installing LSP servers for different languages  
`mason-lspconfig` - Configuring LSP servers  
`midnight-theme` - Color scheme for Neovim  
`mini-surround` - Adds surrounding characters to a selection  
`neotab` - Tab out of quotes, brackets, etc.  
`nvim-lspconfig` - Configuring LSP servers  
`telescope` - Fuzzy finder  
`treesitter` - Language parser for things like syntax highlighting  

**Repo links:**
autopairs - https://github.com/windwp/nvim-autopairs  
blink.cmp - https://github.com/saghen/blink.cmp  
gitsigns - https://github.com/lewis6991/gitsigns.nvim  
lazydev - https://github.com/folke/lazydev.nvim  
mason - https://github.com/mason-org/mason.nvim  
mason-lspconfig - https://github.com/mason-org/mason-lspconfig.nvim  
midnight-theme - https://github.com/dasupradyumna/midnight.nvim  
mini-surround - https://github.com/nvim-mini/mini.surround  
neotab - https://github.com/kawre/neotab.nvim  
nvim-lspconfig - https://github.com/neovim/nvim-lspconfig  
telescope - https://github.com/nvim-telescope/telescope.nvim  
- Install ripgrep for live grep  

**MacOS install**  


    ```
    brew install ripgrep
    ```
    
treesitter - https://github.com/nvim-treesitter/nvim-treesitter  

# Keybinds
`vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')`  
Maps escape to remove highlights after searching instead of typing command out  

`vim.keymap.set('i', 'jk', '<Esc>')`  
Maps "jk" to return to normal mode from insert mode  


## mini.surround
`sa` - surround add (must combine with text object or motion. Ex: `saiw"` = surround inner word with quotes)  
`sd` - delete surrounding (can combine with text object or motion but not required. You could just do `sd"` to remove the quotes around text)  
`sr` - replace surrounding (can combine with text object or motion but not required)  


## Telescope
`<leader>ff` - find files  
`<leader>lg` - live grep  
`<leader>fb` - telescope buffers (shows currently open buffers)  
`<leader>sh` - search help(search through help docs)  
`<leader>sk` - search keymaps  


## Treesitter
Location of config: `/nvim/plugins/treesitter`  
**Initialize Incremental selection**: `<Leader>ss`  
- highlight text according to tree-sitter nodes

**Increment node selection**: `<Leader>si`  
- Increase the highlight started with `<Leader>ss`

**Increment scope selection**: `<Leader>sc`  
- Increase highlight to the next highest scope

**Decrement node selection**: `<Leader>sd`  
- Decrease highlight to the next lowest node

