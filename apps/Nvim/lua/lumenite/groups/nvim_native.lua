---@param palette Palette
---@return {[string]: Highlight_options}
return function(palette)
    ---@type Palette
    local c = palette

    ---@type{[string]: Highlight_options}
    local out = {
        Comment = {fg = c.fg_lower, italic = true}, -- any comment
        -- Conceal = {}, -- placeholder characters substituted for concealed text (see 'conceallevel')

        Cursor = {fg = c.bg_primary, bg=c.fg}, -- character under the cursor
        lCursor = {link = "Cursor"}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM = {link="Cursor"}, -- like Cursor, but used when in IME mode |CursorIM|
        CursorLine = {bg=c.sel_1}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
        CursorColumn = {link = "CursorLine"}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
        ColorColumn = {link = "CursorLine"}, -- used for the columns set with 'colorcolumn'
        Directory = {fg=c.yellow}, -- directory names (and other special names in listings)


        DiffChange = {fg=c.yellow}, -- diff mode: Changed line |diff.txt|
        DiffDelete = {fg=c.red}, -- diff mode: Deleted line |diff.txt|
        DiffText = {fg=c.yellow}, -- diff mode: Changed text within a changed line |diff.txt|
        -- TermCursor  = {}, -- cursor in a focused terminal
        -- TermCursorNC= {}, -- cursor in an unfocused terminal
        ErrorMsg = { fg = c.red }, -- error messages on the command line
        VertSplit = {fg=c.bg_secondary}, -- the column separating vertically split windows
        WinSeparator = {bg=c.bg_secondary, fg=c.bg_primary, bold=true}, -- the column separating vertically split windows
        -- Folded = {}, -- line used for closed folds
        -- FoldColumn = {}, -- 'foldcolumn'
        SignColumn = {bg = c.bg_primary}, -- column where |signs| are displayed
        SignColumnSB = {link = "SignColumn"}, -- column where |signs| are displayed
        LineNr = { fg = c.fg_lower }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        CursorLineNr = { fg = c.fg, bold = true}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

        ModeMsg = {bold = true}, -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea = {link = "Normal"}, -- Area for messages and cmdline
        -- MsgSeparator= {}, -- Separator for scrolled messages, `msgsep` flag of 'display'
        MoreMsg = {fg = c.fg_lower}, -- |more-prompt|
        NonText = {fg = c.fg}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        Normal = {fg=c.fg, bg = c.bg_primary}, -- normal text
        NormalNC = {link="Normal"}, -- normal text in non-current windows
        -- Do not include if the window should not have the same background that the rest at the end of the buffer
        -- EndOfBuffer = {link = "Normal"}, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
        NormalSB = {fg=c.fg, bg=c.bg_secondary}, -- normal text in sidebar
        NormalFloat = {fg = c.fg, bg = c.bg_secondary}, -- Normal text in floating windows.

        FloatBorder = {bg=c.bg_secondary, fg=c.bg_primary},
        FloatTitle = {link = "NormalFloat"},

        Pmenu = {fg=c.fg, bg=c.bg_secondary}, -- Popup menu: normal item.
        PmenuSel = {bg=c.sel_3}, -- Popup menu: selected item.
        PmenuSbar = {bg=c.bg_secondary}, -- Popup menu: scrollbar.
        PmenuThumb = {bg=c.sel_3}, -- Popup menu: Thumb of the scrollbar.
        Question = {fg=c.green}, -- |hit-enter| prompt and yes/no questions
        QuickFixLine = {bg=c.sel_3}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.

        MatchParen = {bg=c.sel_2}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        Substitute = {fg=c.bg_primary, bg=c.pink}, -- |:substitute| replacement text highlighting
        Search = {fg=c.bg_primary, bg=c.pink}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
        IncSearch = {fg=c.bg_primary, bg=c.pink}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
        CurSearch = {fg=c.cyan, bg=c.bg_primary}, -- directions are reversed??

        SpecialKey = {fg= c.red}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
        SpellBad = {sp=c.red, undercurl = true}, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellCap = {sp=c.yellow, undercurl = true}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellLocal = {sp=c.green, undercurl = true}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellRare = {sp =c.green, undercurl = true}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
        StatusLine = {fg=c.fg, bg=c.bg_secondary}, -- status line of current window
        StatusLineNC = {fg=c.fg_lower, bg=c.bg_secondary}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
        -- TabLine = {}, -- tab pages line, not active tab page label
        -- TabLineFill = {}, -- tab pages line, where there are no labels
        -- TabLineSel = {}, -- tab pages line, active tab page label
        Title = {fg=c.green}, -- titles for output from ":set all", ":autocmd" etc.
        Visual = { bg = c.sel_3 }, -- Visual mode selection
        VisualNOS = { link = "Visual" }, -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg = { fg = c.yellow }, -- warning messages
        Whitespace = {}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
        -- WildMenu = {}, -- current match in 'wildmenu' completion
        -- WinBar = {}, -- window bar
        -- WinBarNC = {}, -- window bar in inactive windows

        -- qfLineNr = {},-- QuickFixLineNR
        -- qfFileName = {},--QuickFixFileNam

        -- ["helpCommand"] = {},


        -- NeoVim
        healthSuccess = {fg=c.green},
        healthWarning = {fg=c.yellow},
        healthError = {fg=c.red},
    }
    return out;
end
