local harpoon = require("harpoon")
harpoon:setup()

vim.keymap.set("n", "<leader>Q", function() harpoon:list():add() end, {desc = "Add to harpoon list"})
vim.keymap.set("n", "<leader><tab>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, {desc = "Toggle harpoon"})
vim.keymap.set("n", "<leader>q", function() harpoon:list():select(1) end, {desc = "Go to 1st harpoon file"})
vim.keymap.set("n", "<leader>w", function() harpoon:list():select(2) end, {desc = "Go to 2nd harpoon file"})
vim.keymap.set("n", "<leader>e", function() harpoon:list():select(3) end, {desc = "Go to 3rd harpoon file"})
vim.keymap.set("n", "<leader>r", function() harpoon:list():select(4) end, {desc = "Go to 4th harpoon file"})
