local cmd = vim.cmd

-- Line numbers
vim.o.relativenumber = true
vim.o.number = true
-- Indentation
vim.o.shiftwidth = 4       -- Use 4 spaces for indentation
vim.o.smarttab = true      -- QOL for indentation
vim.o.expandtab = true     -- Use spaces instead of tab characters
vim.o.tabstop = 4
-- Miscellaneous
vim.o.wrap = false         -- Do not wrap lines that go over the screen
vim.o.scrolloff = 99       -- Try to keep 99 lines above and below the cursor at all times (centers the cursor)
vim.o.termguicolors = true -- Enable 24-bit RGB color in the TUI
vim.o.smartcase = true     -- Use smartcase when searching
vim.o.ignorecase = true    -- Ignore case when searching
vim.o.fileformat = 'unix'  -- Always use unix file format (end line character) instead of windows file format
vim.o.linebreak = true     -- Wrap on words and not on charactes when 'set wrap'
vim.o.wrapscan = false     -- Don't wrap the end of the document when searching
vim.o.colorcolumn = '80'   -- Column so that I keep my lines short
vim.opt.iskeyword:remove('_')
vim.opt.fillchars = { eob = " " }

vim.o.formatoptions = 't,c,r,o,q,n,1,],j,p' -- See: Help formatoptions

cmd('language en_US.utf8')

-- Highlighting yanked selection.
vim.api.nvim_create_autocmd('TextYankPost', {
    group = vim.api.nvim_create_augroup('highlight_yank', {}),
    desc = 'Hightlight selection on yank',
    pattern = '*',
    callback = function()
        vim.highlight.on_yank { higroup = 'IncSearch', timeout = 150 }
    end,
})

-- File type detection for your custom config files
vim.api.nvim_create_autocmd({'BufEnter'}, {
    pattern = vim.fn.expand('~') .. '/.dotfiles/.shared_configs/.shared_configs/*',
    command = 'set filetype=sh',
})

-- Auto open files on obsidian if inside vault
vim.api.nvim_create_autocmd({"BufEnter"}, {
    pattern = vim.fn.expand('~') .. '/halo-stash/2-Areas/Obsidian-Vault/*.md',
    callback = function(opt)
        local file = string.match(opt.match, "/home/halo/halo%-stash/2%-Areas/Obsidian%-Vault/(.+).md")
        vim.system({"xdg-open", 'obsidian://open?vault=Obsidian-Vault&file=' .. file})
    end,
})
