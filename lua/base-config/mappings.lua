-- Imports
local set = vim.keymap.set

-- Settings
vim.g.mapleader = ' ' -- Mapping leader to space.

set({'i', 'c'}, '<C-H>', '<C-W>') -- 'ctrl + backspace' to delete whole word in insert mode.

-- set('v', 'K', ":m '<-2<CR>gv=gv") -- 'K' in visual mode will move selection up.
-- set('v', 'J', ":m '>+1<CR>gv=gv") -- 'J' in visual mode will move selection down.

-- Use visual lines to move up and down.
set({'n', 'v'}, 'j', 'gj')
set({'n', 'v'}, 'k', 'gk')

-- Yanking/pasting/deleting into/from the system clipboard.
set({'n', 'v'}, '<leader>y', '"+y')
set({'n', 'v'}, '<leader>p', '"+p')
set({'n', 'v'}, '<leader>d', '"+d')

-- Refactor with the help of the LSP.
set('n', '<leader>rn', vim.lsp.buf.rename)
set('n', 'gr', vim.lsp.buf.references)
set('n', 'gd', vim.lsp.buf.definition)

set('n', '<M-C-K>', 'gt') -- Alt + Ctrl + K -> Next Tab
set('n', '<M-C-J>', 'gT') -- Alt + Ctrl + J -> Previous Tab
