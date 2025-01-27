local lazy = require("lazy")
vim.keymap.set('n' , "<leader>ll", lazy.home, { desc = "Show Lazy" })
vim.keymap.set('n' , "<leader>lu", lazy.update, { desc = "Update Plugins" })
