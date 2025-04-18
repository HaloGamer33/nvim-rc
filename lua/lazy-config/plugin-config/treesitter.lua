require'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = {},
    sync_install = false,
    ignore_install = {},

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    indent = {
        enable = true,
    },
    highlight = {
        enable = true,
    },
    folding = {
        enable = true,
    },

    modules = {
    },
}

-- vim.opt.smartindent = false
require 'nvim-treesitter.install'.prefer_git = false
