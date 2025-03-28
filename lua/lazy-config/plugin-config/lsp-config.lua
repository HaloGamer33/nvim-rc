-- !!! IMPORTANT !!!
-- The in which this files are loaded is important.
-- 1. Mason
-- 2. Mason-Lspconfig
-- 3. Set Up of the servers via lspconfig

--  ┌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┐
--  ╎ Mason Plugin ╎
--  └╌╌╌╌╌╌╌╌╌╌╌╌╌╌┘
require("mason").setup()


--  ┌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┐
--  ╎ Mason-Lspconfig Plugin ╎
--  └╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┘
require("mason-lspconfig").setup {
    automatic_installation = true,
}


--  ┌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┐
--  ╎ Lspconfig Plugin ╎
--  └╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌┘
-- Show full errors & warnings when hovering
vim.o.updatetime = 750
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

local capabilities = require('cmp_nvim_lsp').default_capabilities()
-- This part replaces the necesity of setting up each individual server.
require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {
            capabilities = capabilities -- I dont no autocomplete for code
        }
    end,
}

require("lspconfig").html.setup{
    capabilities = capabilities
}

-- test
local swift_lsp = vim.api.nvim_create_augroup("swift_lsp", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
    pattern = { "swift" },
    callback = function()
        local root_dir = vim.fs.dirname(vim.fs.find({
            "Package.swift",
            ".git",
        }, { upward = true })[1])
        local client = vim.lsp.start({
            name = "sourcekit-lsp",
            cmd = { "sourcekit-lsp" },
            root_dir = root_dir,
        })
        vim.lsp.buf_attach_client(0, client)
    end,
    group = swift_lsp,
})
