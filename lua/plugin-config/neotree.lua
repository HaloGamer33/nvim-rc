require('neo-tree').setup({
    event_handlers = {
        {
            -- Close Neotree window after opening file with enter.
            event = "file_opened",
            handler = function()
                require("neo-tree.command").execute({ action = "close" })
            end
        }
    },


    window = {
        mappings = {
            -- Using tab to open a file doesnt loose focus of the Neotree window.
            ["<tab>"] = function(state)
              state.commands["open"](state)
              vim.cmd("Neotree")
            end,
        }
    }
})
