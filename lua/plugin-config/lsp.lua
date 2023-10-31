require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").lua_ls.setup {
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
        },
    },
}
require("lspconfig").cssharp_ls.setup {}
require("lspconfig").cssls.setup {}
require("lspconfig").gopls.setup {}
require("lspconfig").html.setup {}
require("lspconfig").pylsp.setup {}
