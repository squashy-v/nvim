return {
    "nvim-treesitter/nvim-treesitter",  -- Plugin repository
    event = "VeryLazy",
    config = function()
        require("nvim-treesitter.configs").setup {
            highlight = { enable = true },    -- Enable syntax highlighting
            indent = { enable = true },
            additional_vim_regex_highlighting = { enable = false },
        }
    end,
    run = ":TSUpdate",                   -- Run TSUpdate on installation
}
