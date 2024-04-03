
---@param palette Palette
---@return {[string]: Highlight_options}
return function(palette)
    ---@type Palette
    local c = palette

    ---@type{[string]: Highlight_options}
    local out = {
        -- -- LspTrouble
        TroubleText = {fg= c.fg},
        TroubleCount = {fg= c.green},
        TroubleNormal = {bg=c.bg_secondary},

        -- -- Illuminate
        -- illuminatedWord = {},
        -- illuminatedCurWord = {},
        -- IlluminatedWordText = {},
        -- IlluminatedWordRead = {},
        -- IlluminatedWordWrite = {},

        -- -- diff
        -- diffAdded = {},
        -- diffRemoved = {},
        -- diffChanged = {},
        -- diffOldFile = {},
        -- diffNewFile = {},
        -- diffFile = {},
        -- diffLine = {},
        -- diffIndexLine = {},

        -- -- Telescope
        TelescopeBorder = {fg=c.bg_secondary, bg=c.bg_secondary},
        TelescopeNormal = {bg=c.bg_secondary},

        -- -- NvimTree
        --NvimTreeNormal = {bg=c.bg_secondary},
        -- NvimTreeWinSeparator = {
        --     fg = options.styles.sidebars == "transparent" and c.border or c.bg_sidebar,
        --     bg = c.bg_sidebar,
        -- },
        -- NvimTreeNormalNC = {},
        -- NvimTreeRootFolder = {},
        -- NvimTreeGitDirty = {},
        -- NvimTreeGitNew = {},
        -- NvimTreeGitDeleted = {},
        -- NvimTreeOpenedFile = {},
        -- NvimTreeSpecialFile = {},
        -- NvimTreeIndentMarker = {},
        -- NvimTreeImageFile = {},
        -- NvimTreeSymlink = {},
        -- NvimTreeFolderIcon = {},
        -- -- NvimTreeFolderName= {},


        -- LspFloatWinNormal = {},
        -- LspFloatWinBorder = {},
        -- LspSagaBorderTitle = {},
        -- LspSagaHoverBorder = {},
        -- LspSagaRenameBorder = {},
        -- LspSagaDefPreviewBorder = {},
        -- LspSagaCodeActionBorder = {},
        -- LspSagaFinderSelection = {},
        -- LspSagaCodeActionTitle = {},
        -- LspSagaCodeActionContent = {},
        -- LspSagaSignatureHelpBorder = {},
        -- ReferencesCount = {},
        -- DefinitionCount = {},
        -- DefinitionIcon = {},
        -- ReferencesIcon = {},
        -- TargetWord = {},

        -- TSNodeKey = {},
        -- TSNodeUnmatched = {},


        -- Cmp
        -- CmpDocumentation = {fg=c.fg, bg=c.bg_secondary},
        -- CmpDocumentationBorder = {fg=c.fg, bg=c.bg_secondary},
        -- CmpGhostText = {fg=c.fg_lower},

        -- CmpItemAbbr = {fg=c.fg, bg=c.bg_secondary}, -- insertion items
        -- -- CmpItemAbbrDeprecated = {},
        -- CmpItemAbbrMatch = {fg=c.fg, bg=c.sel_3},
        -- CmpItemAbbrMatchFuzzy = {fg=c.fg, bg=c.sel_3},

        -- CmpItemMenu = {fg=c.fg, bg=c.bg_secondary},-- Source

        -- CmpItemKindDefault = {fg=c.fg, bg=c.bg_secondary},-- Kind

        -- CmpItemKindCodeium = {},
        -- CmpItemKindCopilot = {},
        -- CmpItemKindTabNine = {},

        -- -- Aerial
        -- AerialNormal = {},
        -- AerialGuide = {},
        -- AerialLine = {},

        IndentBlanklineChar = {fg=c.fg_lower},
        IndentBlanklineContextChar = {fg=c.blue},
        -- IblIndent = {},
        -- IblScope = {},

        -- -- Lazy
        -- LazyProgressDone = {},
        -- LazyProgressTodo = {},


        TreesitterContext = {bg=c.sel_2},
        -- Hlargs = {},
        -- -- TreesitterContext = {},

    }
    return out;
end
