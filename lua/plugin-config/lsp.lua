require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = {
        "lua_ls",
        "html",
        "csharp_ls",
        "cssls",
        "gopls",
        "rust_analyzer",
        "pyright",
    }
}

local capabilites = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup {
    capabilites = capabilites,
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = {'vim'},
            },
        },
    },
}
require("lspconfig").csharp_ls.setup {
    capabilites = capabilites,
}
require("lspconfig").cssls.setup {
    capabilites = capabilites,
}
require("lspconfig").gopls.setup {
    capabilites = capabilites,
}
require("lspconfig").html.setup {
    capabilites = capabilites,
}
require("lspconfig").pyright.setup {
    capabilites = capabilites,
}
require("lspconfig").texlab.setup {
    capabiliteis = capabilites,
}
