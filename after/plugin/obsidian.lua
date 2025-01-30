vim.keymap.set("n", "<leader>os", function() print("gdrive push")
    vim.fn.jobstart("rclone sync /home/vandergj/bayt/mount/mind-palace/ mind-palace:vault/") end, { desc = "GDrive Push" })
vim.keymap.set("n", "<leader>ol", function() print("gdrive pull")
    vim.fn.jobstart("rclone sync mind-palace:vault/ /home/vandergj/bayt/mount/mind-palace/") end, { desc = "GDrive pull" })
