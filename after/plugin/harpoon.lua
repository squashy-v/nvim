local harpoon = require("harpoon")


vim.keymap.set("n", "<leader>ea", function() harpoon:list():add() end, { desc = "Add mark to buffer" })
vim.keymap.set("n", "<leader>ee", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "Toggle quick menu" })

vim.keymap.set("n", "<leader>eh", function() harpoon:list():select(1) end, { desc = "Goto file 1"})
vim.keymap.set("n", "<leader>ej", function() harpoon:list():select(2) end, { desc = "Goto file 2"})
vim.keymap.set("n", "<leader>ek", function() harpoon:list():select(3) end, { desc = "Goto file 3"})
vim.keymap.set("n", "<leader>el", function() harpoon:list():select(4) end, { desc = "Goto file 4"})
