local cmd = vim.cmd

-- Line numbers
vim.o.relativenumber = true
vim.o.number = true
-- Indentation
vim.o.shiftwidth = 4       -- Use 4 spaces for indentation
vim.o.smarttab = true      -- QOL for indentation
vim.o.expandtab = true     -- Use spaces instead of tab characters
-- Miscellaneous
vim.o.wrap = false         -- Do not wrap lines that go over the screen
vim.o.scrolloff = 99       -- Try to keep 99 lines above and below the cursor at all times (centers the cursor)
vim.o.termguicolors = true -- Enable 24-bit RGB color in the TUI
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

vim.api.nvim_create_autocmd({'VimEnter'}, {
    callback = function()
        vim.fn.system('wezterm cli set-tab-title " nvim "')
    end,
})

vim.api.nvim_create_autocmd({'VimLeave'}, {
    callback = function()
        vim.fn.system('wezterm cli set-tab-title ""')
    end,
})


-- Limit line length to 100 on markdown files
-- vim.api.nvim_create_autocmd('FileType', {
--     pattern = 'markdown',
--     command = 'setlocal textwidth=100'
-- })

-- vim.api.nvim_create_autocmd('FileType', {
--     pattern = 'markdown',
--     callback = function ()
--         vim.opt_local.relativenumber = false
--         vim.opt_local.number = false
--         vim.opt_local.wrap = true
--         vim.opt_local.colorcolumn = ''
--         vim.cmd('NoNeckPain')  -- Executes the :NoNeckPain command
--         vim.cmd('colorscheme modus_vivendi')
--         vim.cmd('highlight WinSeparator guifg=bg')

--         vim.keymap.set('n', '$', 'g$', { buffer = 0, noremap = true, silent = true })
--         vim.keymap.set('n', '0', 'g0', { buffer = 0, noremap = true, silent = true })
--     end
-- })
