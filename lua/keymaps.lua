vim.keymap.set('n', '<leader>bl', function() vim.cmd('ls') end, { desc = "list buffers" })
vim.keymap.set('n', '<leader>bn', function() vim.cmd('bn') end, { desc = "buffer next" })
vim.keymap.set('n', '<leader>bp', function() vim.cmd('bp') end, { desc = "previous buffer" })
vim.keymap.set('n', '<leader>bds', function() vim.cmd('bd!') end, { desc = "delete buffer" })
vim.keymap.set('n', '<leader>bda', function() vim.cmd('bufdo bd') end, { desc = "delete all buffers" })
vim.keymap.set('n', '<leader>w', function() vim.cmd("w") end, { desc = "save current buffer" })

vim.keymap.set('n', '<M-h>', '<C-w><C-h>', { desc = "Move pane to the left" })
vim.keymap.set('n', '<M-j>', '<C-w><C-j>', { desc = "Move pane down" })
vim.keymap.set('n', '<M-k>', '<C-w><C-k>', { desc = "Move pane up" })
vim.keymap.set('n', '<M-l>', '<C-w><C-l>', { desc = "Move pane to the right" })

vim.api.nvim_create_user_command("Cempty", function()
    vim.fn.setqflist({})
end, { desc = "Clear Quick Fix List" })
vim.keymap.set('n', '<leader>qe', "<Cmd>Cempty<CR>", { desc = "Clear Quick Fix List" })

vim.api.nvim_create_user_command("Copen", "copen", { desc = "Open Quick Fix List" })
vim.keymap.set('n', '<leader>qo', "<Cmd>Copen<CR>", { desc = "Open Quick Fix List" })

vim.api.nvim_create_user_command("Cclose", "cclose", { desc = "Close Quick Fix List" })
vim.keymap.set('n', '<leader>qc', "<Cmd>Cclose<CR>", { desc = "Close Quick Fix List" })


-- learn how these work

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

vim.keymap.set('n', '<C-J>', 'mZJ`Z', { desc = "Append next line to current one" })

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = "Screen jump down cursor centered" })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = "Screen jump up cursor centered" })

vim.keymap.set('n', 'n', 'nzzzv', { desc = "jump next search while centered" })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = "jump prev search while centered" })

vim.keymap.set('x', '<leader>p', "\"_dP", { desc = "paste over text without replacing reg" })

vim.keymap.set({ 'n', 'v' }, '<leader>y', "\"+y", { desc = "yank into system clipboard" })
vim.keymap.set({ 'n', 'v' }, '<leader>Y', "\"+Y", { desc = "yank line into system clipboard" })
vim.keymap.set('n', '<leader>by', "gg0vG$\"+y", { desc = "yank buffer into system clipboard" })

vim.keymap.set({ 'n', 'v' }, '<leader>d', "\"_d", { desc = "delete to void reg" })

vim.keymap.set("n", "<leader>qk", "<cmd>cnext<CR>zz", { desc = "quickfix next" })
vim.keymap.set("n", "<leader>qj", "<cmd>cprev<CR>zz", { desc = "quickfix prev" })
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "replace word under cursor" })
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- vim.keymap.set(
--     "n",
--     "<leader>ee",
--     "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
-- )
--
-- vim.keymap.set(
--     "n",
--     "<leader>ea",
--     "oassert.NoError(err, \"\")<Esc>F\";a"
-- )
--
-- vim.keymap.set(
--     "n",
--     "<leader>ef",
--     "oif err != nil {<CR>}<Esc>Olog.Fatalf(\"error: %s\\n\", err.Error())<Esc>jj"
-- )
--
-- vim.keymap.set(
--     "n",
--     "<leader>el",
--     "oif err != nil {<CR>}<Esc>O.logger.Error(\"error\", \"error\", err)<Esc>F.;i"
-- )
--
-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
--
-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end, { desc = "source current file" })
