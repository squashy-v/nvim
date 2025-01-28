local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>jf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>jg', builtin.git_files, { desc = 'Telescope git files' })
vim.keymap.set('n', '<leader>js',
	function()
		builtin.grep_string({ search = vim.fn.input("Grep > ") });
	end,

	{ desc = 'Telescope live grep' })
