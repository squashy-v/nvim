vim.api.nvim_create_autocmd({ "BufLeave" }, {
  pattern = "{}",
  callback = function()
    if vim.api.nvim_buf_line_count(0) == 1 and vim.api.nvim_buf_get_lines(0, 0, 1, false) == "" then
      vim.bo.buftype = "nofile"
      vim.bo.bufhidden = "wipe"
    end
  end,
})
