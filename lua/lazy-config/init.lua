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

    if vim.fn.isdirectory(vim.fn.expand("~/halo-stash/2-Areas/Obsidian-Vault")) == 1 then
        files = vim.tbl_filter(function(f)
            return not f:find("obsidian%-nvim%.lua$")
        end, files)
    end
    for _, file in ipairs(files) do
        -- Strip the path and .lua extension to get the module name
        local module = dir .. "." .. vim.fn.fnamemodify(file, ":t:r")
        require(module)
    end
end

load_dir("lazy-config/plugin-config")
require("lazy-config.plugin-mappings")
