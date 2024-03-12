local cmd = vim.cmd

-- Line number & tabs
vim.wo.relativenumber = true
vim.wo.number = true
cmd("set shiftwidth=4 smarttab")
cmd("set expandtab")
cmd("set tabstop=8 softtabstop=0")
cmd("set nowrap")
cmd("language en_US")

-- Clipboard
-- vim.opt.clipboard:append("unnamedplus")  -- Setting clipboard to be the same as system clipboard.


-- Highlighting yanked selection.
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("highlight_yank", {}),
  desc = "Hightlight selection on yank",
  pattern = "*",
  callback = function()
    vim.highlight.on_yank { higroup = "IncSearch", timeout = 150 }
  end,
})

-- True Color
cmd("set termguicolors")
