-- Imports
local set = vim.keymap.set

-- Settings
vim.g.mapleader = ' '                    -- Mapping leader to space.

set('i', '<C-H>', '<C-W>')                             -- 'ctrl + backspace' to delete whole word in insert mode.
set('n', '<leader><tab>', '<cmd>Neotree toggle<cr>')   -- 'Leader + tab' to open file tree.
set('n', '<m-j>', '<cmd>BufferPrevious<cr>')           -- 'alt + j' to previous tab.
set('n', '<m-k>', '<cmd>BufferNext<cr>')               -- 'alt + k' to next tab.
set('n', '<m-w>', '<cmd>BufferClose<cr>')              -- 'alt + w' to close tab.
set('n', '<C-0>', '<cmd>HG33LiveServer<cr>')           -- 'ctrl + 0' to open LiveServer.
