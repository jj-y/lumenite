
---@param palette Palette
---@return {[string]: Highlight_options}
return function(palette)
    ---@type Palette
    local c = palette

    ---@type{[string]: Highlight_options}
    local out = {
        -- These groups are not listed as default vim groups,
        -- but they are defacto standard group names for syntax highlighting.
        -- commented out groups should chain up to their "preferred" group by
        -- default,
        -- Uncomment and edit if you want more specific syntax highlighting.

        Constant        = {fg = c.orange}, -- (preferred) any constant
        String          = {fg = c.green}, --   a string constant: "this is a string"
        Character       = {fg = c.green}, --  a character constant: 'c', '\n'
        -- Number          = {}, --   a number constant: 234, 0xff
        -- Boolean         = {}, --  a boolean constant: TRUE, false
        -- Float           = {--    a floating point constant: 2.3e10

        Identifier = {fg = c.fg}, -- (preferred) any variable name
        Function = {fg = c.blue}, -- function name (also: methods for classes)

        Statement = {fg = c.purple}, -- (preferred) any statement
        -- Conditional   = {}, --  if, then, else, endif, switch, etc.
        -- Repeat        = {}, --   for, do, while, etc.
        -- Label         = {}, --    case, default, etc.
        Operator = {fg = c.fg}, -- "sizeof", "+", "*", etc.
        Keyword = { fg = c.purple, italic = true}, --  any other keyword
        -- Exception     = {}, --  try, catch, throw

        PreProc = {fg= c.cyan}, -- (preferred) generic Preprocessor
        -- Include       = {}, --  preprocessor #include
        -- Define        = {}, --   preprocessor #define
        -- Macro         = {}, --    same as Define
        -- PreCondit     = {}, --  preprocessor #if, #else, #endif, etc.

        Type = { fg = c.yellow}, -- (preferred) int, long, char, etc.
        -- StorageClass  = {}, -- static, register, volatile, etc.
        -- Structure     = {}, --  struct, union, enum, etc.
        -- Typedef       = {}, --  A typedef

        Special = { fg = c.green}, -- (preferred) any special symbol (pretty close to BuiltInFunctions)
        SpecialChar   = { fg=c.pink}, --  special character in a constant
        -- Tag           = {}, --    you can use CTRL-] on this
        Delimiter = { fg=c.blue }, --  character that needs attention
        -- SpecialComment= {}, -- special things inside a comment
        -- Debug = {}, --    debugging statements

        Underlined = {underline=true}, -- (preferred) text that stands out, HTML links
        Bold = {bold=true},
        Italic = {italic=true},

        -- ("Ignore", below, may be invisible...)
        -- Ignore = {}, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = {fg=c.red}, -- (preferred) any erroneous construct
        Todo = {fg= c.green, underline=true}, -- (preferred) anything that needs extra attention; mostly the keywords 

        -- htmlH1 = {},
        -- htmlH2 = {},

        -- mkdHeading = {},
        -- mkdCode = {},
        -- mkdCodeDelimiter = {},
        -- mkdCodeStart = {},
        -- mkdCodeEnd = {},
        -- mkdLink = {},

        -- markdownHeadingDelimiter = {},
        -- markdownCode = {},
        -- markdownCodeBlock = {},
        -- markdownH1 = {},
        -- markdownH2 = {},
        -- markdownLinkText = {},


        -- debugPC = {}, -- used for highlighting the current line in terminal-debug
        -- debugBreakpoint = {}, -- used for breakpoint colors in terminal-debug

        -- dosIniLabel = {},

        -- These groups are for the native LSP client. Some other LSP clients may
        -- use these groups, or use their own. Consult your LSP client's
        -- documentation.
        LspReferenceText = {bg=c.sel_2}, -- used for highlighting "text" references
        LspReferenceRead = {bg=c.sel_2}, -- used for highlighting "read" references
        LspReferenceWrite = {bg=c.sel_2}, -- used for highlighting "write" references

        DiagnosticError = {fg=c.red}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticWarn = {fg=c.yellow}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticInfo = {fg=c.green}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticHint = {fg=c.green}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticUnnecessary = {fg=c.yellow}, -- Used as the base highlight group. Other Diagnostic highlights link to this by default

        DiagnosticVirtualTextError = {fg=c.red}, -- Used for "Error" diagnostic virtual text
        DiagnosticVirtualTextWarn = {fg=c.yellow}, -- Used for "Warning" diagnostic virtual text
        DiagnosticVirtualTextInfo = {fg=c.green}, -- Used for "Information" diagnostic virtual text
        DiagnosticVirtualTextHint = {fg=c.green}, -- Used for "Hint" diagnostic virtual text

        DiagnosticUnderlineError ={undercurl=true, sp=c.red}, -- Used to underline "Error" diagnostics
        DiagnosticUnderlineWarn = {undercurl=true, sp=c.yellow}, -- Used to underline "Warning" diagnostics
        DiagnosticUnderlineInfo = {undercurl=true, sp=c.green}, -- Used to underline "Information" diagnostics
        DiagnosticUnderlineHint = {undercurl=true, sp=c.green}, -- Used to underline "Hint" diagnostics

        LspSignatureActiveParameter = {fg=c.fg, bold = true},
        -- LspCodeLens = {fg=c.fg_lower},

        LspInlayHint = {fg= c.fg_lower}, -- lsp-inlay plugin

        -- LspInfoBorder = {},

        DapStoppedLine = {fg=c.bg_primary, bg=c.yellow}, -- Used for "Warning" diagnostic virtual text

        -- These groups are for the Neovim tree-sitter highlights.
        ["@annotation"] = { link = "PreProc" },
        ["@attribute"] = { link = "PreProc" },
        ["@boolean"] = { link = "Boolean" },
        ["@character"] = { link = "Character" },
        ["@character.special"] = { link = "SpecialChar" },
        ["@comment"] = { link = "Comment" },
        ["@keyword.conditional"] = { link = "Conditional" },
        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { fg=c.orange },
        ["@constant.macro"] = { link = "Define" },
        ["@keyword.debug"] = { link = "Debug" },
        ["@keyword.directive.define"] = { link = "Define" },
        ["@keyword.exception"] = { link = "Exception" },
        ["@number.float"] = { link = "Float" },
        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { fg=c.green },
        ["@function.call"] = { link = "@function" },
        ["@function.macro"] = { link = "Macro" },
        ["@keyword.import"] = { link = "Include" },
        ["@keyword.coroutine"] = { link = "@keyword" },
        ["@keyword.operator"] = { link = "@operator" },
        ["@keyword.return"] = { link = "@keyword" },
        ["@function.method"] = { link = "Function" },
        ["@function.method.call"] = { link = "@function.method" },
        ["@namespace.builtin"] = { link = "@variable.builtin" },
        ["@none"] = {},
        ["@number"] = { link = "Number" },
        ["@keyword.directive"] = { link = "PreProc" },
        ["@keyword.repeat"] = { link = "Repeat" },
        ["@keyword.storage"] = { link = "StorageClass" },
        ["@string"] = { link = "String" },
        ["@tag"] = { link = "Label" },
        ["@tag.attribute"] = { link = "@property" },
        ["@tag.delimiter"] = { link = "Delimiter" },
        ["@comment.note"] = {link="Todo"},
        ["@comment.error"] = { fg = c.red},
        ["@comment.hint"] = { fg = c.green},
        ["@comment.info"] = { fg = c.green},
        ["@comment.warning"] = { fg = c.yellow},
        ["@comment.todo"] = { link="Todo" },
        ["@type"] = { link = "Type" },
        ["@type.definition"] = { link = "Typedef" },
        ["@type.qualifier"] = { link = "@keyword" }, -- example in C would be const before var

        --- Misc
        ["@comment.documentation"] = {fg=c.fg_lower},
        ["@operator"] = {fg=c.fg}, -- For any operator: `+`, but also `->` and `*` in C.

        -- --- Punctuation
        ["@punctuation.delimiter"] = {fg=c.blue}, -- For delimiters ie: `.`
        ["@punctuation.bracket"] = {fg=c.blue}, -- For brackets and parens.
        ["@punctuation.special"] = { fg = c.pink}, -- For special symbols (e.g. `{}` in string interpolation)

        -- --- Literals
        ["@string.documentation"] = {fg=c.green},
        ["@string.regexp"] = {fg=c.orange}, -- For regexes.
        ["@string.escape"] = {fg = c.pink}, -- For escape characters within a string.

        -- --- Functions
        ["@constructor"] = { fg = c.yellow}, -- For constructor calls and definitions: `= {}` in Lua, and Java constructors.
        ["@variable.parameter"] = {fg=c.red}, -- For parameters of a function.
        ["@variable.parameter.builtin"] = {link="@variable.parameter"}, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

        -- --- Keywords
        ["@keyword"] = {fg=c.purple}, -- For keywords that don't fall in previous categories.
        ["@keyword.function"] = {fg=c.purple}, -- For keywords used to define a fuction.

        -- Handel as KEyword for now
        ["@label"] = {fg=c.purple}, -- For labels: `label:` in C and `:label:` in Lua.

        -- --- Types
        ["@type.builtin"] = {fg=c.yellow},
        ["@variable.member"] = {fg=c.fg}, -- For fields.
        -- ["@property"] = {},

        -- --- Identifiers
        ["@variable"] = {fg=c.fg}, -- Any variable name that does not have another highlight.
        ["@variable.builtin"] = {fg=c.red}, -- Variable names that are defined by the languages, like `this` or `self`.
        ["@module.builtin"] = {fg=c.red}, -- Variable names that are defined by the languages, like `this` or `self`.


        ["@diff.plus"] = {fg=c.green},
        ["@diff.minus"] = {fg=c.red},
        ["@diff.delta"] = {fg=c.yellow},

        -- ["@module"] = {},

        -- -- tsx
        -- ["@tag.tsx"] = {},
        -- ["@constructor.tsx"] = {},
        -- ["@tag.delimiter.tsx"] = {},

        -- --- Text
        -- ["@markup.raw"] = { link = "String" },
        -- ["@markup.raw.markdown"] = {},
        -- ["@markup.raw.markdown_inline"] = {},
        -- ["@markup.list"] = {},
        -- ["@markup.list.markdown"] = {},
        -- ["@markup.list.unchecked"] = {}, -- For brackets and parens.
        -- ["@markup.list.checked"] = {}, -- For brackets and parens.
        -- ["@markup.link"] = {},
        -- ["@markup.link.label"] = { link = "SpecialChar" },
        -- ["@markup.link.label.symbol"] = { link = "Identifier" },
        -- ["@markup"] = { link = "@none" },
        -- ["@markup.environment"] = { link = "Macro" },
        -- ["@markup.environment.name"] = { link = "Type" },
        -- ["@markup.math"] = { link = "Special" },
        -- ["@markup.heading"] = { link = "Title" },
        -- ["@markup.heading.1.markdown"] = {},
        -- ["@markup.heading.2.markdown"] = {},
        -- ["@markup.heading.3.markdown"] = {},
        -- ["@markup.heading.4.markdown"] = {},
        -- ["@markup.heading.5.markdown"] = {},
        -- ["@markup.heading.6.markdown"] = {},
        -- ["@markup.heading.1.marker.markdown"] = {},
        -- ["@markup.heading.2.marker.markdown"] = {},
        -- ["@markup.heading.3.marker.markdown"] = {},
        -- ["@markup.heading.4.marker.markdown"] = {},
        -- ["@markup.heading.5.marker.markdown"] = {},
        -- ["@markup.heading.6.marker.markdown"] = {},
        ["@markup.strong"] = { bold = true },
        ["@markup.emphasis"] = { italic = true },
        ["@markup.strikethrough"] = { strikethrough = true },
        ["@markup.underline"] = { underline = true },
        ["@markup.link.url"] = { underline=true, fg=c.blue },

        -- -- LSP Semantic Token Groups
        ["@lsp.type.boolean"] = { link = "@boolean" },
        ["@lsp.type.builtinType"] = { link = "@type.builtin" },
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.decorator"] = { link = "@attribute" },
        ["@lsp.type.deriveHelper"] = { link = "@attribute" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
        ["@lsp.type.formatSpecifier"] = { link = "@markup.list" },
        ["@lsp.type.generic"] = { link = "@variable" },
        ["@lsp.type.interface"] = { fg = c.yellow },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.type.lifetime"] = { link = "@keyword.storage" },
        ["@lsp.type.namespace"] = { link = "@module" },
        ["@lsp.type.number"] = { link = "@number" },
        ["@lsp.type.operator"] = { link = "@operator" },
        ["@lsp.type.parameter"] = { link = "@variable.parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
        ["@lsp.type.selfTypeKeyword"] = { link = "@variable.builtin" },
        ["@lsp.type.string"] = { link = "@string" },
        ["@lsp.type.typeAlias"] = { link = "@type.definition" },
        ["@lsp.type.unresolvedReference"] = { undercurl = true, sp = c.red},
        ["@lsp.type.variable"] = {}, -- use treesitter styles for regular variables
        ["@lsp.typemod.class.defaultLibrary"] = { link = "@type.builtin" },
        ["@lsp.typemod.enum.defaultLibrary"] = { link = "@type.builtin" },
        ["@lsp.typemod.enumMember.defaultLibrary"] = { link = "@constant.builtin" },
        ["@lsp.typemod.function.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
        ["@lsp.typemod.keyword.injected"] = { link = "@keyword" },
        ["@lsp.typemod.macro.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.method.defaultLibrary"] = { link = "@function.builtin" },
        ["@lsp.typemod.operator.injected"] = { link = "@operator" },
        ["@lsp.typemod.string.injected"] = { link = "@string" },
        ["@lsp.typemod.struct.defaultLibrary"] = { link = "@type.builtin" },
        -- ["@lsp.typemod.type.defaultLibrary"] = { fg = util.darken(c.blue1, 0.8) },
        -- ["@lsp.typemod.typeAlias.defaultLibrary"] = { fg = util.darken(c.blue1, 0.8) },
        ["@lsp.typemod.variable.callable"] = { link = "@function" },
        ["@lsp.typemod.variable.defaultLibrary"] = { link = "@variable.builtin" },
        ["@lsp.typemod.variable.injected"] = { link = "@variable" },
        ["@lsp.typemod.variable.static"] = { link = "@constant" },
        -- NOTE: maybe add these with distinct highlights?
        -- ["@lsp.typemod.variable.globalScope"] (global variables)

        -- -- ts-rainbow
        rainbowcol1 = {fg=c.red},
        rainbowcol2 = {fg=c.orange},
        rainbowcol3 = {fg=c.yellow},
        rainbowcol4 = {fg=c.green},
        rainbowcol5 = {fg=c.blue},
        rainbowcol6 = {fg=c.purple},
        rainbowcol7 = {fg=c.cyan},

        -- -- ts-rainbow2 (maintained fork)
        TSRainbowRed = {link="rainbowcol1"},
        TSRainbowOrange = {link="rainbowcol2"},
        TSRainbowYellow = {link="rainbowcol3"},
        TSRainbowGreen = {link="rainbowcol4"},
        TSRainbowBlue = {link="rainbowcol5"},
        TSRainbowViolet = {link="rainbowcol6"},
        TSRainbowCyan = {link="rainbowcol7"},
    }
    return out;
end
