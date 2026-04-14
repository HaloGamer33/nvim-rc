vim.cmd("command! Delmarks delm a-zA-Z0-9")

vim.api.nvim_create_user_command(
    "Help",
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
    {nargs = 1, complete = "help"}
)

vim.api.nvim_create_user_command(
    "ChatGPTWrittingSpace",
    function(args)
        vim.cmd.tabnew()
        vim.cmd("NoNeckPain")
        vim.cmd("set wrap")
    end,
    {nargs = 0}
)

vim.api.nvim_create_user_command("InsertPreface", function(opts)
    local filepath = vim.fn.expand("%:p")
    local arguments = {}
    table.insert(arguments, "preface-generator.bash")
    table.insert(arguments, filepath)
    if opts.args ~= "" then
        table.insert(arguments, "-d")
        table.insert(arguments, opts.args)
    end
    local system_obj = vim.system(arguments, {text = true}):wait()
    local output = system_obj.stdout

    local commentstr = vim.bo.commentstring
    local commented = ""
    for line in string.gmatch(output, ".-\n") do
        local commented_line = commentstr:gsub("%%s", line):gsub(" +\n", "\n")
        commented = commented .. commented_line
    end

    if opts.range > 0 then
        -- Delete the visual selection, then paste into its place
        vim.api.nvim_buf_set_lines(0, opts.line1 - 1, opts.line2, false, {})
        vim.api.nvim_win_set_cursor(0, {opts.line1, 0})
    end

    vim.api.nvim_paste(commented, true, -1)
    vim.api.nvim_win_set_cursor(0, {opts.line1, 0})
end, { range = true, nargs = "?" })

vim.api.nvim_create_user_command("InsertScriptSections", function(opts)
    vim.api.nvim_paste("Initialization", true, -1)
    vim.api.nvim_cmd(vim.api.nvim_parse_cmd("CBlcbox3", {}), {output = false})
    vim.api.nvim_command("normal o")
    vim.api.nvim_command("normal o")
    vim.api.nvim_command("normal o")
    vim.api.nvim_command("normal o")
    vim.api.nvim_paste("Script Body", true, -1)
    vim.api.nvim_cmd(vim.api.nvim_parse_cmd("CBlcbox3", {}), {output = false})
    vim.api.nvim_command("normal o")
    vim.api.nvim_command("normal o")
end, {})

vim.api.nvim_create_user_command("InsertScriptImports", function(opts)
    local text = ""
    text = text .. 'source ~/scripts/lib/parse_args.bash\n'
    text = text .. 'eval "$(extract-file-info.bash $0 | rg \'^DESCRIPTION=\')"\n'
    text = text .. 'add_description "$DESCRIPTION"\n'
    text = text .. 'add_positional                         "EXAMPLE" "Description of the positional argument."\n'
    text = text .. 'add_option_with_value "-f" "--file"    "EXAMPLE" "Description of the option with value."\n'
    text = text .. 'add_option            ""   "--verbose"           "Description of the option/flag."\n'
    text = text .. 'parse_args "$@"\n'
    text = text .. '[[ "$OPT_VERBOSE" == "true" ]] && LOG_LEVEL=DEBUG\n'
    text = text .. 'source ~/scripts/lib/liblog.bash'
    vim.api.nvim_paste(text, true, -1)
end, {})

vim.api.nvim_create_user_command("ScriptTemplate", function(opts)
    vim.api.nvim_paste("#!/usr/bin/env bash\n\n", true, -1)
    vim.api.nvim_cmd(vim.api.nvim_parse_cmd("InsertPreface", {}), {output = false})
    vim.api.nvim_command("normal Go")
    vim.api.nvim_cmd(vim.api.nvim_parse_cmd("InsertScriptSections", {}), {output = false})
    vim.api.nvim_command("normal 6k")
    vim.api.nvim_cmd(vim.api.nvim_parse_cmd("InsertScriptImports", {}), {output = false})
    vim.api.nvim_command("normal G")
end, {})
