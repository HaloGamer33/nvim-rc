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
        folder = "2-Areas/Daily Notes",
        date_format = "YYYY-MM-DD",
        workdays_only = false,
    },

    attachments = {
        folder = "3-Resources/zFile Attachments",
        img_text_func = require("obsidian.builtin").img_text_func,
        img_name_func = function()
            return string.format("Pasted image %s", os.date "%Y%m%d%H%M%S")
        end,
        confirm_img_paste = true, -- TODO: move to paste module, paste.confirm
    },

    templates = {
        enabled = true,
        folder = "3-Resources/Utility Notes/Templates",
        date_format = "YYYY-MM-DD",
        time_format = "hh:mm a",
        substitutions = {
            date = function(_, suffix)
                local format = suffix or Obsidian.opts.templates.date_format
                return require("obsidian.util").format_date(os.time(), format)
            end,
            time = function(_, suffix)
                local format = suffix or Obsidian.opts.templates.time_format
                return require("obsidian.util").format_date(os.time(), format)
            end,
            title = function(ctx)
                return ctx.partial_note and ctx.partial_note:display_name()
            end,
            id = function(ctx)
                return ctx.partial_note and ctx.partial_note.id
            end,
            path = function(ctx)
                return ctx.partial_note and tostring(ctx.partial_note.path)
            end,
        },
    },

    frontmatter = {
        enabled = false,
    }
})
