return {
    "hrsh7th/nvim-cmp",
    lazy = false,
    config = function ()
        local cmp = require('cmp')
        cmp.setup({
            sources = {
                {name = 'nvim_lsp'},
            },
            snippet = {
                expand = function(args)
                    vim.snippet.expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({}),
        })
    end,
}
