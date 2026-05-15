-- Import utility functions for highlight management
local utils = require("nothing.utils")

local M = {}

---@param c table
---@param opts table
function M.apply(c, opts)
    local hl = {}

    local base = {
        fg = c.fg,
        bg = c.bg,
    }

    local function getandmerge()
        -- get all highlight groups
        for _, name in ipairs(vim.fn.getcompletion("", "highlight")) do
            hl[name] = base
        end

        -- user custom merge
        hl = utils.merge_highlights(hl, opts.custom_highlights, c, opts)

        return hl
    end

    local group = vim.api.nvim_create_augroup("nothing_highlights", { clear = true })
    vim.api.nvim_create_autocmd("ColorScheme", {
        group = group,
        pattern = "nothing",
        callback = function()
            vim.schedule(function()
                utils.apply_hl(getandmerge())
            end)
        end,
    })

    utils.apply_hl(getandmerge())
end

return M
