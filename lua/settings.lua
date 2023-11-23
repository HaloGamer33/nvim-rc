-- Language
vim.api.nvim_exec ('language en_US', true)

-- Line number & tabs
vim.wo.relativenumber = true
vim.cmd('set shiftwidth=4 smarttab')
vim.cmd('set expandtab')
vim.cmd('set tabstop=8 softtabstop=0')

-- Clipboard
vim.opt.clipboard:append('unnamedplus')  -- Setting clipboard to be the same as Windows.
