require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
        "html",
        "csharp_ls",
        "cssls",
        "gopls",
        "rust_analyzer",
    }
}

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
require("lspconfig").csharp_ls.setup {}
require("lspconfig").cssls.setup {}
require("lspconfig").gopls.setup {}
require("lspconfig").html.setup {}
require("lspconfig").pylsp.setup {}
