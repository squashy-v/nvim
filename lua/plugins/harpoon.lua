return {
    "ThePrimeagen/harpoon",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim", 'nvim-telescope/telescope.nvim' },
    config = function()
        require("harpoon").setup()
    end,
    branch = "harpoon2",
}
