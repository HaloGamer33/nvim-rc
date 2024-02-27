-- Imports
local set = vim.keymap.set

-- Settings
vim.g.mapleader = " "                    -- Mapping leader to space.

set("i", "<C-H>", "<C-W>")                             -- "ctrl + backspace" to delete whole word in insert mode.

set("n", "<C-j>", "<C-d>zz") -- Moving half page but keeping cursor center
set("n", "<C-k>", "<C-u>zz")

set("v", "K", ":m '<-2<CR>gv=gv") -- "K" in visual mode will move selection up
set("v", "J", ":m '>+1<CR>gv=gv") -- "J" in visual mode will move selection down

set("v", "n", "nzzzv") -- Centering cursor when searching
set("v", "N", "Nzzzv")

set({"n", "v"}, "<leader>y", '"+y')

-- set("n", "<C-0>", "<cmd>HG33LiveServer<cr>")           -- "ctrl + 0" to open LiveServer.
