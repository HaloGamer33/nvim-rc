local M = {}

function M.ifBufModifiable(fn)
    if vim.bo.modifiable == false then
        print("Buffer not modifiable")
        return
    end
    fn()
end

return M
