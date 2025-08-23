--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is a lua file, vim will append it to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require("lush")
local hsl = lush.hsl

local hsl = lush.hsl
local hsluv = lush.hsluv

local colors = {
	red = hsluv("#E06C75"),
	dark_red = hsluv("#BE5046"),
	green = hsluv("#98C379"),
	yellow = hsluv("#E5C07B"),
	dark_yellow = hsluv("#D19A66"),
	blue = hsluv("#61AFEF"),
	purple = hsluv("#C678DD"),
	cyan = hsluv("#56B6C2"),
	white = hsluv("#ABB2BF"),
	black = hsluv("#282C34"),
	comment_grey = hsluv("#5C6370"),
	gutter_fg_grey = hsluv("#4B5263"),
	cursor_grey = hsluv("#2C323C"),
	visual_grey = hsluv("#3E4452"),
	special_grey = hsluv("#3B4048"),
}




-- stylua: ignore start
---@diagnostic disable: undefined-global
local theme = lush(function(injected_functions)
	local sym = injected_functions.sym
	return {
		-- The following are the Neovim (as of 0.8.0-dev+100-g371dfb174) highlight
		-- groups, mostly used for styling UI elements.
		-- Comment them out and add your own properties to override the defaults.
		-- An empty definition `{}` will clear all styling, leaving elements looking
		-- like the 'Normal' group.
		-- To be able to link to a group, it must already be defined, so you may have
		-- to reorder items as you go.
		--
		-- See :h highlight-groups
		--
		ColorColumn    { fg=colors.cursor_grey}, -- Columns set with 'colorcolumn'
		Conceal        { fg=colors.blue }, -- Placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor         { fg=colors.black, bg=colors.blue }, -- Character under the cursor
		-- CurSearch      { }, -- Highlighting a search pattern under the cursor (see 'hlsearch')
		-- lCursor        { }, -- Character under the cursor when |language-mapping| is used (see 'guicursor')
		-- CursorIM       { }, -- Like Cursor, but used when in IME mode |CursorIM|
		CursorColumn   { bg=colors.cursor_grey}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		CursorLine     {}, -- Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
		Directory      { fg=colors.blue}, -- Directory names (and other special names in listings)
		DiffAdd        { bg=colors.green.de(60).da(65)}, -- Diff mode: Added line |diff.txt|
		DiffChange     { bg=colors.yellow.de(60).da(65)}, -- Diff mode: Changed line |diff.txt|
		DiffDelete     { bg=colors.red.de(60).da(65) }, -- Diff mode: Deleted line |diff.txt|
		DiffText       { gui="italic+bold", bg=colors.yellow.de(60).da(77)}, -- Diff mode: Changed text within a changed line |diff.txt|
		-- EndOfBuffer    { }, -- Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
		TermCursor     { Cursor }, -- Cursor in a focused terminal
		TermCursorNC   { Cursor }, -- Cursor in an unfocused terminal
		ErrorMsg       { fg=colors.red}, -- Error messages on the command line
		VertSplit      { fg=colors.visual_grey}, -- Column separating vertically split windows
		Folded         { fg=colors.comment_grey}, -- Line used for closed folds
		-- FoldColumn     { }, -- 'foldcolumn'
		-- SignColumn     { }, -- Column where |signs| are displayed
		IncSearch      { fg=colors.yellow, bg=colors.comment_grey }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute     { }, -- |:substitute| replacement text highlighting
		LineNr         { fg=colors.gutter_fg_grey }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		-- LineNrAbove    { }, -- Line number for when the 'relativenumber' option is set, above the cursor line
		-- LineNrBelow    { }, -- Line number for when the 'relativenumber' option is set, below the cursor line
		-- CursorLineNr   { }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		-- CursorLineFold { }, -- Like FoldColumn when 'cursorline' is set for the cursor line
		-- CursorLineSign { }, -- Like SignColumn when 'cursorline' is set for the cursor line
		MatchParen     { fg=colors.blue, gui='underline'}, -- Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		ModeMsg        { fg=colors.purple}, -- 'showmode' message (e.g., "-- INSERT -- ")
		-- MsgArea        { }, -- Area for messages and cmdline
		-- MsgSeparator   { }, -- Separator for scrolled messages, `msgsep` flag of 'display'
		MoreMsg        { fg=colors.purple}, -- |more-prompt|
		NonText        { fg=colors.special_grey}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		Normal         { fg=colors.white, bg=colors.black}, -- Normal text
		NormalFloat    { Normal }, -- Normal text in floating windows.
		-- FloatBorder    { }, -- Border of floating windows.
		FloatTitle     { fg=colors.red}, -- Title of floating windows.
		NormalNC       { Normal }, -- normal text in non-current windows
		Pmenu          { fg=colors.white, bg=colors.menu_grey}, -- Popup menu: Normal item.
		PmenuSel       { fg=colors.cursor_grey, bg=colors.white}, -- Popup menu: Selected item.
		-- PmenuKind      { }, -- Popup menu: Normal item "kind"
		-- PmenuKindSel   { }, -- Popup menu: Selected item "kind"
		-- PmenuExtra     { }, -- Popup menu: Normal item "extra text"
		-- PmenuExtraSel  { }, -- Popup menu: Selected item "extra text"
		PmenuSbar      { bg=colors.cursor_grey}, -- Popup menu: Scrollbar.
		PmenuThumb     { bg=colors.white}, -- Popup menu: Thumb of the scrollbar.
		Question       { fg=colors.purple}, -- |hit-enter| prompt and yes/no questions
		QuickFixLine   { fg=colors.black, bg=colors.yellow}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Search         { fg=colors.black, bg=colors.yellow}, -- Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
		SpecialKey     { fg=colors.green}, -- Unprintable characters: text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
		-- SpellBad       { }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
		-- SpellCap       { }, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
		-- SpellLocal     { }, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
		-- SpellRare      { }, -- Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
		StatusLine   { fg=colors.white, bg=colors.cursor_grey }, -- Status line of current window
		StatusLineNC { StatusLine                             }, -- Status lines of not-current windows. Note: If this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
		TabLine      { fg=colors.white, bg=colors.cursor_grey }, -- Tab pages line, not active tab page label
		TabLineFill  { bg=colors.black                        }, -- Tab pages line, where there are no labels
		TabLineSel   { fg=colors.white, bg=colors.visual_grey }, -- Tab pages line, active tab page label
		Title        { fg=colors.red                          }, -- Titles for output from ":set all", ":autocmd" etc.
		Visual         {bg=colors.visual_grey}, -- Visual mode selection
		VisualNOS      { Visual}, -- Visual mode selection when vim is "Not Owning the Selection".
		WarningMsg     { fg=colors.yellow}, -- Warning messages
		-- Whitespace     { }, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		-- Winseparator   { }, -- Separator between window splits. Inherts from |hl-VertSplit| by default, which it will replace eventually.
		WildMenu       { fg=colors.black, bg=colors.blue }, -- Current match in 'wildmenu' completion
		-- WinBar         { }, -- Window bar of current window
		-- WinBarNC       { }, -- Window bar of not-current windows

		-- Common vim syntax groups used for all kinds of code and markup.
		-- Commented-out groups should chain up to their preferred (*) group
		-- by default.
		--
		-- See :h group-name
		--
		-- Uncomment and edit if you want more specific syntax highlighting.

		Comment        { fg=colors.comment_grey}, -- Any comment

		Constant       { fg=colors.cyan}, -- (*) Any constant
		String         { fg=colors.green}, --   A string constant: "this is a string"
		Character      { fg=colors.green}, --   A character constant: 'c', '\n'
		Number         { fg=colors.dark_yellow}, --   A number constant: 234, 0xff
		Boolean        { fg=colors.dark_yellow}, --   A boolean constant: TRUE, false
		Float          { fg=colors.dark_yellow}, --   A floating point constant: 2.3e10

		Identifier     { fg=colors.white}, -- (*) Any variable name
		Function       { fg=colors.blue}, --   Function name (also: methods for classes)

		Statement      { fg=colors.purple}, -- (*) Any statement
		Conditional    { fg=colors.purple}, --   if, then, else, endif, switch, etc.
		Repeat         { fg=colors.purple}, --   for, do, while, etc.
		Label          { fg=colors.purple}, --   case, default, etc.
		Operator       { fg=colors.purple}, --   "sizeof", "+", "*", etc.
		Keyword        { fg=colors.purple}, --   any other keyword
		Exception      { fg=colors.purple}, --   try, catch, throw

		PreProc        { fg=colors.yellow}, -- (*) Generic Preprocessor
		Include        { fg=colors.blue}, --   Preprocessor #include
		Define         { fg=colors.purple}, --   Preprocessor #define
		Macro          { fg=colors.purple}, --   Same as Define
		PreCondit      { fg=colors.yellow}, --   Preprocessor #if, #else, #endif, etc.

		Type           { fg=colors.yellow}, -- (*) int, long, char, etc.
		StorageClass   { fg=colors.yellow}, --   static, register, volatile, etc.
		Structure      { fg=colors.yellow}, --   struct, union, enum, etc.
		Typedef        { fg=colors.yellow}, --   A typedef

		Special        { fg=colors.blue}, -- (*) Any special symbol
		SpecialChar    { fg=colors.dark_yellow}, --   Special character in a constant
		Tag            { fg=colors.purple}, --   You can use CTRL-] on this
		Delimiter      { fg=colors.comment_grey}, --   Character that needs attention
		SpecialComment { fg=colors.comment_grey}, --   Special things inside a comment (e.g. '\n')
		Debug          { fg=colors.red}, --   Debugging statements

		Underlined     { gui = "" }, -- Text that stands out, HTML links
		-- Ignore         { }, -- Left blank, hidden |hl-Ignore| (NOTE: May be invisible here in template)
		Error          { fg=colors.red}, -- Any erroneous construct
		Todo           { fg=colors.dark_yellow}, -- Anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client and diagnostic system. Some
		-- other LSP clients may use these groups, or use their own. Consult your
		-- LSP client's documentation.

		-- See :h lsp-highlight, some groups may not be listed, submit a PR fix to lush-template!
		--
		-- LspReferenceText            { } , -- Used for highlighting "text" references
		-- LspReferenceRead            { } , -- Used for highlighting "read" references
		-- LspReferenceWrite           { } , -- Used for highlighting "write" references
		-- LspCodeLens                 { } , -- Used to color the virtual text of the codelens. See |nvim_buf_set_extmark()|.
		-- LspCodeLensSeparator        { } , -- Used to color the seperator between two or more code lens.
		-- LspSignatureActiveParameter { } , -- Used to highlight the active parameter in the signature help. See |vim.lsp.handlers.signature_help()|.

		-- See :h diagnostic-highlights, some groups may not be listed, submit a PR fix to lush-template!
		--
		DiagnosticError            { fg=colors.red                           }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticWarn             { fg=colors.yellow                        }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticInfo             { fg=colors.blue                          }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticHint             { fg=colors.cyan                          }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticOk               { fg=colors.green                         }, -- Used as the base highlight group. Other Diagnostic highlights link to this by default (except Underline)
		DiagnosticVirtualTextError { fg=colors.red, bg=colors.visual_grey    }, -- Used for "Error" diagnostic virtual text.
		DiagnosticVirtualTextWarn  { fg=colors.yellow, bg=colors.visual_grey }, -- Used for "Warn" diagnostic virtual text.
		DiagnosticVirtualTextInfo  { fg=colors.blue, bg=colors.visual_grey   }, -- Used for "Info" diagnostic virtual text.
		DiagnosticVirtualTextHint  { fg=colors.cyan, bg=colors.visual_grey   }, -- Used for "Hint" diagnostic virtual text.
		DiagnosticVirtualTextOk    { fg=colors.green, bg=colors.visual_grey  }, -- Used for "Ok" diagnostic virtual text.
		DiagnosticUnderlineError   { DiagnosticError                         }, -- Used to underline "Error" diagnostics.
		DiagnosticUnderlineWarn    { DiagnosticWarn                          }, -- Used to underline "Warn" diagnostics.
		DiagnosticUnderlineInfo    { DiagnosticInfo                          }, -- Used to underline "Info" diagnostics.
		DiagnosticUnderlineHint    { DiagnosticHint                          }, -- Used to underline "Hint" diagnostics.
		DiagnosticUnderlineOk      { DiagnosticOk                            }, -- Used to underline "Ok" diagnostics.
		DiagnosticFloatingError    { DiagnosticError                         }, -- Used to color "Error" diagnostic messages in diagnostics float. See |vim.diagnostic.open_float()|
		DiagnosticFloatingWarn     { DiagnosticWarn                          }, -- Used to color "Warn" diagnostic messages in diagnostics float.
		DiagnosticFloatingInfo     { DiagnosticInfo                          }, -- Used to color "Info" diagnostic messages in diagnostics float.
		DiagnosticFloatingHint     { DiagnosticHint                          }, -- Used to color "Hint" diagnostic messages in diagnostics float.
		DiagnosticFloatingOk       { DiagnosticOk                            }, -- Used to color "Ok" diagnostic messages in diagnostics float.
		DiagnosticSignError        { DiagnosticError                         }, -- Used for "Error" signs in sign column.
		DiagnosticSignWarn         { DiagnosticWarn                          }, -- Used for "Warn" signs in sign column.
		DiagnosticSignInfo         { DiagnosticInfo                          }, -- Used for "Info" signs in sign column.
		DiagnosticSignHint         { DiagnosticHint                          }, -- Used for "Hint" signs in sign column.
		DiagnosticSignOk           { DiagnosticOk                            }, -- Used for "Ok" signs in sign column.

		-- Tree-Sitter syntax groups.
		--
		-- See :h treesitter-highlight-groups, some groups may not be listed,
		-- submit a PR fix to lush-template!
		--
		-- Tree-Sitter groups are defined with an "@" symbol, which must be
		-- specially handled to be valid lua code, we do this via the special
		-- sym function. The following are all valid ways to call the sym function,
		-- for more details see https://www.lua.org/pil/5.html
		--
		-- sym("@text.literal")
		-- sym('@text.literal')
		-- sym"@text.literal"
		-- sym'@text.literal'
		--
		-- For more information see https://github.com/rktjmp/lush.nvim/issues/109

		sym"@text.literal"      { Comment       }, -- Comment
		sym"@text.reference"    { Identifier    }, -- Identifier
		sym"@text.title"        { Title         }, -- Title
		sym"@text.uri"          { gui=""        }, -- Underlined
		sym"@text.underline"    { gui=""        }, -- Underlined
		sym"@text.todo"         { Todo          }, -- Todo
		sym"@comment"           { Comment       }, -- Comment
		sym"@punctuation"       { Delimiter     }, -- Delimiter
		sym"@constant"          { Constant      }, -- Constant
		sym"@constant.builtin"  { Special       }, -- Special
		sym"@constant.macro"    { Define        }, -- Define
		sym"@define"            { Define        }, -- Define
		sym"@macro"             { Macro         }, -- Macro
		sym"@string"            { String        }, -- String
		sym"@string.escape"     { SpecialChar   }, -- SpecialChar
		sym"@string.special"    { SpecialChar   }, -- SpecialChar
		sym"@character"         { Character     }, -- Character
		sym"@character.special" { SpecialChar   }, -- SpecialChar
		sym"@number"            { Number        }, -- Number
		sym"@boolean"           { Boolean       }, -- Boolean
		sym"@float"             { Float         }, -- Float
		sym"@function"          { Function      }, -- Function
		sym"@function.builtin"  { Special       }, -- Special
		sym"@function.macro"    { Macro         }, -- Macro
		sym"@parameter"         { Identifier    }, -- Identifier
		sym"@method"            { Function      }, -- Function
		sym"@field"             { Identifier    }, -- Identifier
		sym"@property"          { Identifier    }, -- Identifier
		sym"@constructor"       { Special       }, -- Special
		sym"@conditional"       { Conditional   }, -- Conditional
		sym"@repeat"            { Repeat        }, -- Repeat
		sym"@label"             { Label         }, -- Label
		sym"@operator"          { Operator      }, -- Operator
		sym"@keyword"           { Keyword       }, -- Keyword
		sym"@exception"         { Exception     }, -- Exception
		sym"@variable"          { Identifier    }, -- Identifier
		sym"@variable.member"   { fg=colors.red }, -- Identifier
		sym"@type"              { Type          }, -- Type
		sym"@type.definition"   { Typedef       }, -- Typedef
		sym"@storageclass"      { StorageClass  }, -- StorageClass
		sym"@structure"         { Structure     }, -- Structure
		sym"@namespace"         { Identifier    }, -- Identifier
		sym"@include"           { Include       }, -- Include
		sym"@preproc"           { PreProc       }, -- PreProc
		sym"@debug"             { Debug         }, -- Debug
		sym"@tag"               { Tag           }, -- Tag

        -- html
        sym"@tag.delimiter.html" { Delimiter },
        sym"@tag.html"           { fg=colors.red},
        sym"@tag.attribute.html" { fg=colors.yellow}
	}
end)
-- stylua: ignore end

-- Return our parsed theme for extension or use elsewhere.
return theme

-- vi:nowrap
