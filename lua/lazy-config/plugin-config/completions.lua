-- Set up nvim-cmp.
local cmp = require("cmp")

cmp.setup({
    snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
            require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
        end,
    },

    mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<Tab>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),

    -- Set up sources for the completions
    sources = cmp.config.sources({
        -- { name = "nvim_lsp" },
        -- { name = "luasnip" },
    },
        {
            { name = "buffer" },
        })
})

function Cmp_html_setup()
    cmp.setup({
        sources = {
            { name = "nvim_lsp" },
            { name = "luasnip" },
        },
    })
end

vim.cmd.autocmd("FileType html lua Cmp_html_setup()")
-- vim.cmd([[autocmd FileType html lua Cmp_html_setup()]])

-- Setup LuaSnip"s VSCode snipets
require("luasnip.loaders.from_vscode").lazy_load()

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    end,
})
