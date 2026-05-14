require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup({
    automatic_enable = true,
    ensure_installed = {}
})

-- local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- vim.lsp.config("*", {
--     capabilities = capabilities
-- })
