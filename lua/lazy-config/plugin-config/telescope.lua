local builtin = require('telescope.builtin')
local extensions = require('telescope').extensions

telescope = require('telescope').setup {
    defaults = {
        file_ignore_patterns = {
            ".git\\",
            ".git/",
            "node_modules\\",
            "node_modules/",
            "venv\\",
            "venv/",
            "Platforms\\",
            "Platforms/",
            "Resources\\",
            "Resources/",
            "obj\\",
            "obj/",
            "bin\\",
            "bin/",
            "__pycache__\\",
            "__pycache__/",
        },
    },
    pickers = {
        help_tags = {
            mappings = {
                i = {
                    ['<CR>'] = 'select_tab',
                },
                n = {
                    ['<CR>'] = 'select_tab',
                },
            }
        }
    },
    extensions = {
        fzf = {
            fuzzy = true,                    -- false will only do exact matching
            override_generic_sorter = true,  -- override the generic sorter
            override_file_sorter = true,     -- override the file sorter
            case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
}

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

-- ┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
-- ┃                    Setting key-binds                    ┃
-- ┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
vim.keymap.set('n', '<leader>ff', function()
    builtin.find_files({
        hidden = true,
        -- no_ignore = true,
    })
end, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', extensions.file_browser.file_browser, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
