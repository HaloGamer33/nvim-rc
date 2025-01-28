-- Imports
local set = vim.keymap.set

-- Settings
vim.g.mapleader = " " -- Mapping leader to space.

set({"i", "c"}, "<C-H>", "<C-W>") -- "ctrl + backspace" to delete whole word in insert mode.

-- No longer necessary when using scrolloff setting
-- set("n", "<C-j>", "<C-d>zz") -- Moving half page but keeping cursor center
-- set("n", "<C-k>", "<C-u>zz")
-- set("n", "<C-d>", "<C-d>zz")
-- set("n", "<C-k>", "<C-u>zz")

set("v", "K", ":m '<-2<CR>gv=gv") -- "K" in visual mode will move selection up
set("v", "J", ":m '>+1<CR>gv=gv") -- "J" in visual mode will move selection down

-- Use visual lines to move up and down
set({"n", "v"}, "j", "gj")
set({"n", "v"}, "k", "gk")

-- set("v", "n", "nzzzv") -- Centering cursor when searching - Visual Mode
-- set("v", "N", "Nzzzv")

-- set("n", "n", "nzz") -- Centering cursor when searching - Normal Mode
-- set("n", "N", "Nzz")

-- Yanking and pasting into the system clipboard
set({"n", "v"}, "<leader>y", '"+y')
set({"n", "v"}, "<leader>p", '"+p')

-- set("n", "<C-0>", "<cmd>HG33LiveServer<cr>") -- "ctrl + 0" to open LiveServer.
