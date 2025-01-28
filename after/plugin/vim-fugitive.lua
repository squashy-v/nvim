vim.keymap.set("n", "<leader>gs", function() 
vim.cmd("0Git")
end, { desc = "Git status" });
