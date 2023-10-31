require('neo-tree').setup({
    event_handlers = {
        {
            event = "file_opened",
            handler = function()
                require("neo-tree.command").execute({ action = "close" })
            end
        }
    },


    window = {
        mappings = {
            ["<tab>"] = function(state)
              state.commands["open"](state)
              vim.cmd("Neotree")
            end,
        }
    }
})
