-- For neo-tree.nvim
require("neo-tree").setup({
    window = {
        mappings = {
            ["."] = "toggle_hidden",
            ["Z"] = "expand_all_nodes",
        },
    },
})
