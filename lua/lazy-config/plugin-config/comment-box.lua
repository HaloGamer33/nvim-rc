local keymap = vim.keymap.set
local cb = require("comment-box")

-- Wrapper function sets border style
local function ccbox() cb.ccbox(21) end
local function albox() cb.albox(4) end
local function line() cb.line(2) end

-- Runs '=' to give indentation
local function albox_indent()
    cb.albox(4)
    vim.api.nvim_feedkeys("=", "n", false)
end

-- centered adapted box with centered text
keymap("n", "<Leader>cba", albox, {})
keymap("v", "<Leader>cba", albox_indent, {})
keymap("n", "<Leader>cbc", ccbox, {})
keymap("n", "<Leader>cl", line, {})
