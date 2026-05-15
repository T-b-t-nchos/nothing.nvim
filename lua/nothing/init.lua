--local utils = require("nothing.utils")
local highlight = require("nothing.highlights")
local M = {}

local default_options = {
    mode = "dark", -- "dark"/"light"
    custom_highlights = nil,
}

M.options = vim.deepcopy(default_options)

local function apply_lualine()
    if not package.loaded["lualine"] then
        return
    end

    vim.schedule(function()
        local ok, lualine = pcall(require, "lualine")
        if not ok then
            return
        end

        local config = lualine.get_config() or {}
        config.options = config.options or {}
        config.options.theme = "nothing"

        package.loaded["lualine.themes.nothing"] = nil

        lualine.setup(config)
        lualine.refresh()
    end)
end

function M.setup(user_options)
    if user_options then
        M.options = vim.tbl_deep_extend("force", M.options, user_options)
    end

    if vim.g.colors_name then
        vim.cmd("highlight clear")
    end
    vim.cmd("syntax reset")

    local options = M.options

    M.colors = require("nothing.colors").setup(options).colors

    M.meta = M.options


    highlight.apply(M.colors, options)


    vim.g.colors_name = "nothing"

    apply_lualine()
end

return M
