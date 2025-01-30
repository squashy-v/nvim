return {
    'stevearc/oil.nvim',
	---@module 'oil'
    event = "VeryLazy",
    -- Optional dependencies
    dependencies = { 
        { "echasnovski/mini.icons", opts = {} } 
    },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
    ---@type oil.SetupOpts
    opts = {},
}
