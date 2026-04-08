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

vim.api.nvim_create_user_command(
    'ChatGPTWrittingSpace',
    function(args)
        vim.cmd.tabnew()
        vim.cmd("NoNeckPain")
        vim.cmd("set wrap")
    end,
    {nargs = 0}
)

vim.api.nvim_create_user_command('InsertPreface', function(opts)
    local filepath = vim.fn.expand('%:p')
    local system_obj = vim.system({'preface-generator.bash', filepath}, {text = true}):wait()
    local output = system_obj.stdout

    local commentstr = vim.bo.commentstring
    local commented = ""
    for line in string.gmatch(output, ".-\n") do
        local commented_line = commentstr:gsub('%%s', line):gsub(' +\n', '\n')
        commented = commented .. commented_line
    end

    if opts.range > 0 then
        -- Delete the visual selection, then paste into its place
        vim.api.nvim_buf_set_lines(0, opts.line1 - 1, opts.line2, false, {})
        vim.api.nvim_win_set_cursor(0, {opts.line1, 0})
    end

    vim.api.nvim_paste(commented, true, -1)
    vim.api.nvim_win_set_cursor(0, {opts.line1, 0})
end, { range = true })
