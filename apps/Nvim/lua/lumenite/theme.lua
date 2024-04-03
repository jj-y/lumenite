---@class Highlight_options
---@field fg? string color name or "#RRGGBB", see note.
---@field bg? string color name or "#RRGGBB", see note.
---@field sp? string color name or "#RRGGBB"
---@field blend? number integer between 0 and 100
---@field bold? boolean
---@field standout? boolean
---@field underline? boolean
---@field undercurl? boolean
---@field underdoube? boolean
---@field underdotted? boolean
---@field underdashed? boolean
---@field strikethrough? boolean
---@field italic? boolean
---@field reverse? boolean
---@field link? string name of another highlight group to link to, see :hi-link.
---@field default? any Don't override existing definition :hi-default

---@param palette Palette
---@return {[string]: Highlight_options}
return function(palette)
    local groups = {
        "lumenite.groups.nvim_native",
        "lumenite.groups.lsp",
        "lumenite.groups.plugins",
    }

    ---@type{[string]: Highlight_options}
    local out = {}
    for _, group_file in ipairs(groups) do
        out = vim.tbl_extend("error", out, require(group_file)(palette))
    end
    return out;
end
