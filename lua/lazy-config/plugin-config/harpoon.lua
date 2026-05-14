local wk = require("which-key")
local harpoon = require("harpoon"):setup({
    settings = {
        save_on_toggle = true,
        sync_on_ui_close = true,
    }
})

wk.add({
    -- icon = "⇁",
    group = "Harpoon",
    {"<leader><tab>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "Toggle harpoon"},
    {"<leader>Q", function() harpoon:list():add() end, desc = "Add to harpoon list", icon = "󰐃"},
    {"<leader>q", function() harpoon:list():select(1) end, desc = "1st harpoon file"},
    {"<leader>w", function() harpoon:list():select(2) end, desc = "2nd harpoon file"},
    {"<leader>e", function() harpoon:list():select(3) end, desc = "3rd harpoon file"},
    {"<leader>r", function() harpoon:list():select(4) end, desc = "4th harpoon file"},
})
