return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
        },
        branch = "main",
        config = function()
            local configs = require("nvim-treesitter.config")
            configs.setup({
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true,
                        keymaps = {
                            ["af"] = "@function.outer",
                            ["if"] = "@function.inner",
                            ["ac"] = "@class.outer",
                            ["ic"] = "@class.inner",
                            ["as"] = "@scope",
                        },
                    },
                    move = {
                        enable = true,
                        set_jumps = true,
                        goto_next_start = {
                            ["]f"] = "@function.outer",
                            ["]c"] = "@class.outer",
                        },
                        goto_next_end = {
                            ["]F"] = "@function.outer",
                            ["]C"] = "@class.outer",
                        },
                        goto_previous_start = {
                            ["[f"] = "@function.outer",
                            ["[c"] = "@class.outer",
                        },
                        goto_previous_end = {
                            ["[F"] = "@function.outer",
                            ["[C"] = "@class.outer",
                        },
                    },
                    swap = {
                        enable = true,
                        swap_next = {
                            [">f"] = "@function.outer",
                            [">c"] = "@class.outer",
                        },
                        swap_previous = {
                            ["<f"] = "@function.outer",
                            ["<c"] = "@class.outer",
                        },
                    },
                },
                highlight = { enable = true },
                indent = { enable = true },
                autotag = { enable = true },
                ensure_installed = {
                    "json", "python", "ron", "javascript", "haskell",
                    "typescript", "tsx", "rust", "zig", "yaml", "html",
                    "css", "markdown", "markdown_inline", "bash", "lua",
                    "vim", "vimdoc", "c", "dockerfile", "gitignore", "astro",
                },
                auto_install = false,
            })
        end
    }
}
