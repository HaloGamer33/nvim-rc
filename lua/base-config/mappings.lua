-- Imports
local set = vim.keymap.set

-- Settings
vim.g.mapleader = " " -- Mapping leader to space.
vim.g.localleader = ","

set({"i", "c"}, "<C-H>", "<C-W>") -- "ctrl + backspace" to delete whole word in insert mode.

-- Use visual lines to move up and down.
set({"n", "v"}, "j", "gj")
set({"n", "v"}, "k", "gk")

-- Yanking/pasting/deleting into/from the system clipboard.
set({"n", "v"}, "<leader>y", '"+y', {desc = "Yank to system clipboard"})
set({"n", "v"}, "<leader>p", '"+p', {desc = "Paste from system clipboard"})
set({"n", "v"}, "<leader>d", '"+d', {desc = "Delete to system clipboard"})

-- LSP Bindings.
set("n", "grn", vim.lsp.buf.rename, {desc = "Rename symbol under the cursor"})
set("n", "gr", vim.lsp.buf.references, {desc = "Go to the uses of the symbol under the cursor"})
set("n", "gd", vim.lsp.buf.definition, {desc = "Go to the creation of the symbol under the cursor"})

set("n", "<M-C-K>", "gt", {desc = "Next Tab"}) -- Alt + Ctrl + K -> Next Tab
set("n", "<M-C-J>", "gT", {desc = "Previous Tab"}) -- Alt + Ctrl + J -> Previous Tab

-- Command line mappings
set("c", "<C-P>", "<Up>")
set("c", "<C-N>", "<Down>")
