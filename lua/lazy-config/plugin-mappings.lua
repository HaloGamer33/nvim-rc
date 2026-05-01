-- Imports
local wk = require("which-key")
local harpoon = require("harpoon")
-- Telescope
local builtin = require("telescope.builtin")
local extensions = require("telescope").extensions

wk.add({
    -- remove trailing whitespace with a keybinding
    {"<Leader>t", require("whitespace-nvim").trim, desc = "Trim whitespace"},
    -- Which Key
    {"<leader>?", function() require("which-key").show({ global = false }) end, desc = "Buffer Local Keymaps (which-key)"},
    -- Folke Trouble.nvim
    {"<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)"},
    {"<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)"},
    {"<leader>cs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)"},
    {"<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions / references / ... (Trouble)"},
    {"<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)"},
    {"<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)"},
    -- File explorer
    {"<C-n>", "<cmd>Neotree position=float reveal=true toggle=true<cr>"},
    -- Harpoon
    {
        -- icon = "⇁",
        group = "Harpoon",
        {"<leader><tab>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "Toggle harpoon"},
        {"<leader>Q", function() harpoon:list():add() end, desc = "Add to harpoon list", icon = "󰐃"},
        {"<leader>q", function() harpoon:list():select(1) end, desc = "1st harpoon file"},
        {"<leader>w", function() harpoon:list():select(2) end, desc = "2nd harpoon file"},
        {"<leader>e", function() harpoon:list():select(3) end, desc = "3rd harpoon file"},
        {"<leader>r", function() harpoon:list():select(4) end, desc = "4th harpoon file"},
    },
    -- Telescope
    {
        {"<leader>ff", function()
            builtin.find_files({
                hidden = true,
                -- no_ignore = true,
            })
        end, desc = "Find file"},
        {"<leader>fg", function()
            builtin.live_grep({
                additional_args = {
                    "--hidden"
                }
            })
        end, desc = "Find word with grep"},
        {"<leader>fb", extensions.file_browser.file_browser, desc = "File browser"},
        {"<leader>fh", builtin.help_tags, desc = "Find help"},
        {"<leader>fr", extensions.recent_files.pick, desc = "Find from recent files"},
    },
    -- LSP
    {
        {"gD", desc = "Go to declaration"},
        {"gd", desc = "Go to definition"},
    },
    -- Marks nvim
    {
        {"ms", desc = "Mark Set"},
        {"ma", desc = "Mark Add"},

        {"mdm", desc = "Mark Delete Mark"},
        {"mdd", desc = "Mark Delete Line"},

        {"mn", desc = "Mark Next"},
        {"mp", desc = "Mark Previous"},
    },
})

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    end,
})

-- Unbind `m` so it doesn't create marks.
vim.keymap.set({"n", "v"}, "m", "<Nop>", { noremap = true, silent = true })
