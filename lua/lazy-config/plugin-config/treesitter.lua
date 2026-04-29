require("treesitter-autoinstall").setup({
    -- A list of *treesitter languages* to ignore.
    ignore = {},
    -- Auto-enable highlighting for installed languages.
    highlight = true,
    -- A list of *treesitter languages* to also enable regex highlighting for
    regex = {},
})
