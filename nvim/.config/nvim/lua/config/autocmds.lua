-- ========================
--  Netrw Settings
-- ========================
vim.cmd("let g:netrw_liststyle = 3") -- Tree-style view
vim.cmd("let g:netrw_banner = 0")    -- Hide banner

-- ========================
--  UI Highlights
-- ========================
vim.cmd(":hi statusline guibg=NONE") -- Transparent statusline background

-- ========================
--  Autocommands
-- ========================
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})
