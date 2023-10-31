-- Old settings (for reference)
-- Setting clipboard to be the same as windo
--
-- vim.cmd('set clipboard+=unnamedplus')
-- vim.api.nvim_set_keymap('i', '<C-H>', '<C-W>', {noremap = true})

-- Imports
local set = vim.keymap.set

-- Setting clipboard to be the same as window
vim.opt.clipboard:append('unnamedplus')
-- Mapping leader to space
vim.g.mapleader = ' '
-- Delete whole word with `ctrl + backspace`
set('i', '<C-H>', '<C-W>')
-- Leader + tab to open file tree.
set('n', '<leader><tab>', '<cmd>Neotree toggle<cr>')
-- Bind 'alt + j' & 'alt + k' next and previous tabs
set('n', '<m-j>', '<cmd>BufferPrevious<cr>')
set('n', '<m-k>', '<cmd>BufferNext<cr>')
-- Bind 'alt + w' to close tab
set('n', '<m-w>', '<cmd>BufferClose<cr>')
