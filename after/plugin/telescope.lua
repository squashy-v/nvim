local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>pg', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<leader>ps',
	function()
		builtin.grep_string({ search = vim.fn.input("Grep > ") });
	end,

	{ desc = 'Telescope live grep' })
