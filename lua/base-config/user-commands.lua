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

vim.cmd('command! Delmarks delm a-zA-Z0-9')

vim.api.nvim_create_user_command(
    'Help',
    function(args)
        vim.cmd.tabnew()

        -- Use pcall to catch errors when running vim.cmd.help
        local success, err = pcall(vim.cmd.help, args.args)
        if not success then
            -- Handle the error, e.g., display an error message
            vim.cmd.close() -- Close the tab if the help command fails
            vim.api.nvim_err_writeln(err:sub(5))
            return
        end

        vim.cmd.only()
    end,
    {nargs = 1, complete = 'help'}
)
