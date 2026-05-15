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
        local merged = {}

        -- get all highlight groups
        for _, name in ipairs(vim.fn.getcompletion("", "highlight")) do
            merged[name] = base
        end

        -- user custom merge
        merged = utils.merge_highlights(merged, opts.custom_highlights, c, opts)

        return merged
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
