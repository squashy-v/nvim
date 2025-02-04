local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>jh', builtin.help_tags, { desc = 'Telescope search help' })
vim.keymap.set('n', '<leader>jk', builtin.keymaps, { desc = 'Telescope search keymaps' })
vim.keymap.set('n', '<leader>jf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>jg', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<leader>jd', builtin.diagnostics, { desc = 'Telescope search diagnostics' })
vim.keymap.set('n', '<leader>js',
function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end, { desc = 'Telescope live grep' })
