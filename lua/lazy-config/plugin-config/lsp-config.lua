require('lspconfig')
require('mason').setup()
require('mason-lspconfig').setup({
    automatic_enable = true,
    ensure_installed = {}
})

-- Show full errors & warnings when hovering
vim.o.updatetime = 750
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

local capabilities = require('cmp_nvim_lsp').default_capabilities()
vim.lsp.config('*', {
    capabilities = capabilities
})

vim.lsp.config.ltex_plus = {
    on_attach = function(client, bufnr)
        require('ltex_extra').setup {
        }
    end,
    settings = {
        ltex = {
            enabled = true,
            language = 'en-US',
        }
    }
}

-- test
local swift_lsp = vim.api.nvim_create_augroup('swift_lsp', { clear = true })
vim.api.nvim_create_autocmd('FileType', {
    pattern = { 'swift' },
    callback = function()
        local root_dir = vim.fs.dirname(vim.fs.find({
            'Package.swift',
            '.git',
        }, { upward = true })[1])
        local client = vim.lsp.start({
            name = 'sourcekit-lsp',
            cmd = { 'sourcekit-lsp' },
            root_dir = root_dir,
        })
        vim.lsp.buf_attach_client(0, client)
    end,
    group = swift_lsp,
})
