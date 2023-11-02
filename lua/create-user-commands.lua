vim.api.nvim_create_user_command('HG33LiveServer',
    function()
        local directory = vim.fn.getcwd()
        local command = "live-server " .. [["]] .. directory .. [["]]
        print("Starting Live Server...")
        vim.fn.jobstart(command)
    end,
    {}
)
