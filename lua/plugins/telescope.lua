return {
    'nvim-telescope/telescope.nvim',
    event = "VeryLazy",
    dependencies = { 'nvim-lua/plenary.nvim',
                     'nvim-treesitter/nvim-treesitter',
                     'nvim-tree/nvim-web-devicons',
                     'nvim-telescope/telescope-fzf-native.nvim', },
    config = function ()
        require("telescope").setup({
            defaults = {
                mappings = {
                    n = {
                        ["<M-q>"] = false,
                        ["<C-q>"] = "send_selected_to_qflist",
                    }
                }
            }
        })
    end,
    branch = '0.1.x',
}
