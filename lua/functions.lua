function CloseFloatingWindows()
    for _, win in pairs(vim.api.nvim_list_wins()) do
        local config = vim.api.nvim_win_get_config(win)
        if config.relative ~= "" then
            vim.api.nvim_win_close(win, false)
        end
    end
end

function make_grid (x, y)
    print(x, y)
end

vim.api.nvim_create_user_command('LspInfo', ':horiz che lspconfig', { desc = "View current lsp health" })
