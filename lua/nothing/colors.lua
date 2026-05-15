local palette = {
    bg = "#000000",
    fg = "#000000",
}

local M = {}

function M.setup(opts)
    local c = vim.deepcopy(palette)

    if opts.mode == "light" then
        c.bg = "#ffffff"
        c.fg = "#ffffff"
    end

    return {
        colors = c,
    }
end

return M
