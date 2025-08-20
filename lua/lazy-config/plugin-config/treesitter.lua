local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
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

-- parser_config.javascript = {
--     install_info = {
--         url = "~/Servers/tree-sitter-javascript", -- local path or git repo
--         files = {
--             "src/parser.c",
--             "src/scanner.c",
--         }, -- note that some parsers also require src/scanner.c or src/scanner.cc
--         -- optional entries:
--         -- branch = "main", -- default branch in case of git repo if different from master
--         -- generate_requires_npm = false, -- if stand-alone parser without npm dependencies
--         -- requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
--     },
--     filetype = "js", -- if filetype does not match the parser name
-- }

-- parser_config.typescript = {
--     install_info = {
--         url = "~/Servers/tree-sitter-typescript", -- local path or git repo
--         location = "typescript",
--         files = {
--             "src/parser.c",
--             "src/scanner.c",
--         }, -- note that some parsers also require src/scanner.c or src/scanner.cc
--         -- optional entries:
--         -- branch = "main", -- default branch in case of git repo if different from master
--         -- generate_requires_npm = false, -- if stand-alone parser without npm dependencies
--         -- requires_generate_from_grammar = false, -- if folder contains pre-generated src/parser.c
--     },
--     filetype = "ts", -- if filetype does not match the parser name
-- }

-- vim.opt.smartindent = false
require 'nvim-treesitter.install'.prefer_git = false
