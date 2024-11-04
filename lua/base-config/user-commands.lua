-- My live server 
-- vim.api.nvim_create_user_command('LiveServerHG33',
--     function()
--         local directory = vim.fn.getcwd()
--         local command = "live-server " .. [["]] .. directory .. [["]]
--         print("Starting Live Server...")
--         vim.fn.jobstart(command)
--     end,
--     {}
-- )
-- Help command that opens in a new tab.
-- ( Honestly dont use it, doesnt work very good )
-- vim.api.nvim_create_user_command('HelpHG33',
--     function(opts)
--         local name_of_help = opts.fargs[1]
--         vim.cmd('help ' .. name_of_help)
--         local path = vim.api.nvim_exec("echo expand('%:p')", true)
--         vim.cmd('quit')
--         vim.cmd('view ' .. path)
--     end,
--     { nargs = 1 })

-- Better version of whats above, doesnt break and just maximices the window.
vim.cmd('command! -nargs=* -complete=help H :help <args> | only')

vim.cmd('command! Delmarks delm a-zA-Z0-9')

vim.api.nvim_create_user_command(
    'Help',
    function(args)
        vim.cmd.help(args.args)
        vim.cmd.only()
    end,
    {nargs = 1, complete = 'help'}
)
