require("lspconfig")
require("mason").setup()
require("mason-lspconfig").setup({
    automatic_enable = true,
    ensure_installed = {}
})

-- Show full errors & warnings when hovering
vim.o.updatetime = 750
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

local capabilities = require("cmp_nvim_lsp").default_capabilities()
vim.lsp.config("*", {
    capabilities = capabilities
})
