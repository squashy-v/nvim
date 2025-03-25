local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.lua_ls.setup {
    capabilities = capabilities,
    on_init = function(client)
        if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if vim.loop.fs_stat(path..'/.luarc.json') or vim.loop.fs_stat(path..'/.luarc.jsonc') then
                return
            end
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
                -- Tell the language server which version of Lua you're using
                -- (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT'
            },
            -- Make the server aware of Neovim runtime files
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME
                    -- Depending on the usage, you might want to add additional paths here.
                    -- "${3rd}/luv/library"
                    -- "${3rd}/busted/library",
                }
                -- or pull in all of 'runtimepath'. NOTE: this is a lot slower and will cause issues when working on your own configuration (see https://github.com/neovim/nvim-lspconfig/issues/3189)
                -- library = vim.api.nvim_get_runtime_file("", true)
            }
        })
    end,
    settings = {
        Lua = {}
    }
}

lspconfig.omnisharp.setup({
    cmd = {
        "/usr/bin/omnisharp", -- full path to binary
        "-lsp",
        "--hostPID",
        tostring(vim.fn.getpid()),
    },
    enable_import_completion = true,
    organize_imports_on_format = true,
    capabilities = capabilities,
})

local servers = { 'clangd', 'gleam', 'gopls', 'jdtls', 'kotlin_language_server', 'ts_ls', 'html', 'cssls', 'jsonls', 'markdown_oxide', 'nimls', 'perlnavigator', 'phpactor', 'pyright', 'bashls', 'solargraph', 'rust_analyzer', 'zls', 'teal_ls' }
-- manual updating hls teal_ls roslyn

for _, server in ipairs(servers) do
    lspconfig[server].setup({
        capabilities = capabilities,
    })
end
