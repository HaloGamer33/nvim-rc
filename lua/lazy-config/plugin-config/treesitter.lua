require("treesitter-autoinstall").setup({
    -- A list of *treesitter languages* to ignore.
    ignore = {},
    -- Auto-enable highlighting for installed languages.
    highlight = true,
    -- A list of *treesitter languages* to also enable regex highlighting for
    regex = {},
})

-- Auto enable indentation with TreeSitter on all files.
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})
