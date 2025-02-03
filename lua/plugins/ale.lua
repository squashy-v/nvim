return {
  'dense-analysis/ale',
  config = function()
    -- Enable auto-fixing on save
    vim.g.ale_fix_on_save = 1

    -- Show signs in the sign column
    vim.g.ale_sign_error = '>>'
    vim.g.ale_sign_warning = '<<'

    -- Enable linting in real-time (on every key press)
    vim.g.ale_lint_on_text_changed = 'always'
  end
}
