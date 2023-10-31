local lspconfig = require("lspconfig")

require("mason").setup()
require("mason-lspconfig").setup({
   ensure_installed = { "lua_ls", "csharp_ls" }
})

lspconfig.lua_ls.setup {}
lspconfig.csharp_ls.setup {}
