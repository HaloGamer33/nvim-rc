-- For neo-tree.nvim
require('neo-tree').setup({
    window = {
        mappings = {
            ["."] = "toggle_hidden",
            ["Z"] = "expand_all_nodes",
        },
    },
})
vim.keymap.set('n', '<C-n>', '<cmd>Neotree position=float reveal=true toggle=true<cr>')

-- For nvim-tree.lua
-- vim.keymap.set('n', '<C-n>', '<cmd>NvimTreeToggle<cr>')
