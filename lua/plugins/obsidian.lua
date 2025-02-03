return {
    "epwalsh/obsidian.nvim",
    lazy = true,
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = "VeryLazy",
    keys = { {"<leader>ob", function() print("Loading Obsidian") end, desc = "Load Obsidian" } },
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
    --   -- refer to `:h file-pattern` for more examples
    --   "BufReadPre path/to/my-vault/*.md",
    --   "BufNewFile path/to/my-vault/*.md",
    -- },
    dependencies = {
        -- Required.
        "nvim-lua/plenary.nvim",
        "hrsh7th/nvim-cmp",
        "nvim-telescope/telescope.nvim",

        -- see below for full list of optional dependencies 👇
        },
    version = "*",  -- recommended, use latest release instead of latest commit
    opts = {
        workspaces = {
            {
                name = "mind-palace",
                path = "~/bayt/mount/mind-palace",
            },
        },
    },
}
