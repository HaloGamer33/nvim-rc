require('obsidian').setup({
    legacy_commands = false,

    workspaces = {
        {
            name = "Obsidian-Vault",
            path = "~/halo-stash/2-Areas/Obsidian-Vault",
        },
    },

    daily_notes = {
        enabled = true,
        folder = "2-Resources/Daily Notes",
        date_format = "YYYY-MM-DD",
        alias_format = nil,
        default_tags = { "daily-notes" },
        workdays_only = true,
    },

    attachments = {
        folder = "3-Resources/zFile Attachments",
        img_text_func = require("obsidian.builtin").img_text_func,
        img_name_func = function()
            return string.format("Pasted image %s", os.date "%Y%m%d%H%M%S")
        end,
        confirm_img_paste = true, -- TODO: move to paste module, paste.confirm
    },
})
