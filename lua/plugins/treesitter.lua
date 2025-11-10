return {
    {
        "nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate",
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = { 
                    "c",
                    "lua",
                    "vim", 
                    "vimdoc", 
                    "query", 
                    "markdown", 
                    "markdown_inline", 
                    "css", 
                    "dockerfile",
                    "html",
                    "bash",
                    "cpp",
                    "csv",
                    "git_config",
                    "gitignore",
                    "git_rebase",
                    "gitcommit",
                    "go",
                    "http",
                    "java",
                    "javascript",
                    "jinja",
                    "jinja_inline",
                    "json",
                    "kotlin",
                    "nginx",
                    "powershell",
                    "python",
                    "regex",
                    "rust",
                    "sql",
                    "terraform",
                    "toml",
                    "tsx",
                    "yaml",
                    "zig",
                },
                auto_install = true,
                highlight = {
                    enable = true,

                    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
                    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
                    -- Using this option may slow down your editor, and you may see some duplicate highlights.
                    -- Instead of true it can also be a list of languages
                    additional_vim_regex_highlighting = false,
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<Leader>ss",
                        node_incremental = "<Leader>si",
                        scope_incremental = "<Leader>sc",
                        node_decremental = "<Leader>sd",
                    },
                }
            }
        end,
        }
    }
