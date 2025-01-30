vim.keymap.set('n', '<leader>bl', function() vim.cmd('ls') end, { desc = "list buffers"})
vim.keymap.set('n', '<leader>bn', function() vim.cmd('bn') end, { desc = "buffer next"})
vim.keymap.set('n', '<leader>bp', function() vim.cmd('bp') end, { desc = "previous buffer"})
vim.keymap.set('n', '<leader>bds', function() vim.cmd('bd!') end, { desc = "delete buffer"})
vim.keymap.set('n', '<leader>bda', function() vim.cmd('bufdo bd') end, { desc = "delete all buffers"})


vim.api.nvim_create_user_command("Cempty", function()
	vim.fn.setqflist({})
end, { desc = "Clear Quick Fix List" })
vim.keymap.set('n', '<leader>qe', "<Cmd>Cempty<CR>", { desc = "Clear Quick Fix List" })

vim.api.nvim_create_user_command("Copen","copen", { desc = "Open Quick Fix List" })
vim.keymap.set('n', '<leader>qo', "<Cmd>Copen<CR>", { desc = "Open Quick Fix List" })

vim.api.nvim_create_user_command("Cclose","cclose", { desc = "Close Quick Fix List" })
vim.keymap.set('n', '<leader>qc', "<Cmd>Cclose<CR>", { desc = "Close Quick Fix List" })
