return {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
        -- Reserve a space in the gutter
        -- This will avoid an annoying layout shift in the screen
        vim.opt.signcolumn = 'yes'

        -- Add cmp_nvim_lsp capabilities settings to lspconfig
        -- This should be executed before you configure any language server
        local lspconfig_defaults = require('lspconfig').util.default_config
        lspconfig_defaults.capabilities = vim.tbl_deep_extend(
            'force',
            lspconfig_defaults.capabilities,
            require('cmp_nvim_lsp').default_capabilities()
        )
        -- fix this mess
        vim.api.nvim_create_autocmd('LspAttach', {
            desc = 'LSP actions',
            callback = function()
                vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, { desc = 'lsp hover' })
                vim.keymap.set('n', 'gd', require('telescope.builtin').lsp_definitions, { desc = 'lsp goto def' })
                vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references, { desc = 'lsp goto ref' })
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = 'lsp goto declaration' })
                vim.keymap.set('n', 'gI', require('telescope.builtin').lsp_implementations,
                    { desc = 'lsp goto implement' })
                vim.keymap.set('n', 'go', require('telescope.builtin').lsp_type_definitions, { desc = 'lsp type def' })
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, { desc = 'lsp references' })
                vim.keymap.set('n', 'gs', vim.lsp.buf.signature_help)
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'lsp rename' })
                vim.keymap.set({ 'n', 'x' }, "<leader>f", vim.lsp.buf.format, { desc = "lsp format current buffer" })
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'lsp code action' })
            end,
        })
    end,
}
