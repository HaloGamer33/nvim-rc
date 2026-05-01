-- Base Lazy configuration
require("lazy-config.lazy-nvim")
require("lazy-config.plugin-list")

-- Each plugin's individual configuration
-- init.lua
local function load_dir(dir)
    -- Build the path to scan
    local path = vim.fn.stdpath("config") .. "/lua/" .. dir

    -- Get all .lua files in that directory
    local files = vim.fn.glob(path .. "/*.lua", false, true)

    for _, file in ipairs(files) do
        -- Strip the path and .lua extension to get the module name
        local module = dir .. "." .. vim.fn.fnamemodify(file, ":t:r")
        require(module)
    end
end

load_dir("lazy-config/plugin-config")
require("lazy-config.plugin-mappings")
