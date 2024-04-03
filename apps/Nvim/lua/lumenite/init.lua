local M = {}

---@type Palette
local variant = require("lumenite.variants.dark")

---@param user_config table
function M.setup(user_config)
end

function M.load()
    local theme = require("lumenite.theme")(variant)

    local h = vim.api.nvim_set_hl

    for group, settings in pairs(theme) do
        h(0, group, settings)
    end
end

return M
