-- Language
vim.api.nvim_exec ('language en_US', true)

-- Line number & tabs
vim.wo.relativenumber = true
vim.cmd('set shiftwidth=4 smarttab')
vim.cmd('set expandtab')
vim.cmd('set tabstop=8 softtabstop=0')

-- Colorscheme
vim.cmd('colorscheme tokyonight-storm')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
