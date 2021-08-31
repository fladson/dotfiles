local M = {}
M._colors = {
  red = '#F9867B',
  orange = '#CD9731',
  yellow = '#FDCE68',
  green = '#A3EEA0',
  cyan = '#6796E6',
  blue = '#7BE2F9',
  purple = '#E19EF5',
  tomato = '#F44747',
  white = '#FFFFFF',

  background = '#212835',
  dark_background = '#1B212C',

  border = '#3E4451',
  comment = '#5C6370',
  lineNumber = '#495162',
  scrollbar = '#4E5666',
  cursorLine = '#2C313A',
  indent = '#383C44',
}

-- onenord
M.colors = {
  base0A = "#EBCB8B",
  base04 = "#566074",
  base07 = "#ced4df",
  base05 = "#bfc5d0",
  base0E = "#B48EAD",
  base0D = "#81A1C1",
  base0C = "#97b7d7",
  base0B = "#A3BE8C",
  base02 = "#434C5E",
  base0F = "#BF616A",
  base03 = "#4C566A",
  base08 = "#ba5c65",
  base01 = "#3B4252",
  base00 = "#2E3440",
  base09 = "#D08770",
  base06 = "#c7cdd8"
}

-- schemer
M.colors = {
    base00 = '#16161D', base01 = '#3e4451', base02 = '#2c313c', base03 = '#565c64',
    base04 = '#6c7891', base05 = '#abb2bf', base06 = '#9a9bb3', base07 = '#c5c8e6',
    base08 = '#e06c75', base09 = '#d19a66', base0A = '#e5c07b', base0B = '#98c379',
    base0C = '#56b6c2', base0D = '#0184bc', base0E = '#c678dd', base0F = '#a06949',
}

-- tomorrow night
M.colors = {
  base00 = '#1d1f21', base01 = '#282a2e', base02 = '#373b41', base03 = '#969896',
  base04 = '#b4b7b4', base05 = '#c5c8c6', base06 = '#e0e0e0', base07 = '#ffffff',
  base08 = '#cc6666', base09 = '#de935f', base0A = '#f0c674', base0B = '#b5bd68',
  base0C = '#8abeb7', base0D = '#81a2be', base0E = '#b294bb', base0F = '#a3685a'
}

M.highlight = setmetatable({}, {
  __newindex = function(_, hlgroup, args)
    local guifg, guibg, gui, guisp = args.guifg, args.guibg, args.gui, args.guisp
    local cmd = {'hi', hlgroup}
    if guifg then table.insert(cmd, 'guifg='..guifg) end
    if guibg then table.insert(cmd, 'guibg='..guibg) end
    if gui then table.insert(cmd, 'gui='..gui) end
    if guisp then table.insert(cmd, 'guisp='..guisp) end
    vim.cmd(table.concat(cmd, ' '))
  end
})
local hi = M.highlight

if vim.fn.exists('syntax_on') then
  vim.cmd('syntax reset')
end
vim.cmd('set termguicolors')
vim.cmd('set background=dark')

-- Vim editor colors
hi.Normal       = { guifg = M.colors.base05, guibg = M.colors.base00, gui = nil,    guisp = nil }
hi.Bold         = { guifg = nil,             guibg = nil,             gui = 'bold', guisp = nil }
hi.Debug        = { guifg = M.colors.base08, guibg = nil,             gui = nil,    guisp = nil }
hi.Directory    = { guifg = M.colors.base0D, guibg = nil,             gui = nil,    guisp = nil }
hi.Error        = { guifg = M.colors.base00, guibg = M.colors.base08, gui = nil,    guisp = nil }
hi.ErrorMsg     = { guifg = M.colors.base08, guibg = M.colors.base00, gui = nil,    guisp = nil }
hi.Exception    = { guifg = M.colors.base08, guibg = nil,             gui = nil,    guisp = nil }
hi.FoldColumn   = { guifg = M.colors.base0C, guibg = M.colors.base00, gui = nil,    guisp = nil }
hi.Folded       = { guifg = M.colors.base03, guibg = M.colors.base01, gui = nil,    guisp = nil }
hi.IncSearch    = { guifg = M.colors.base01, guibg = M.colors.base09, gui = 'none', guisp = nil }
hi.Italic       = { guifg = nil,             guibg = nil,             gui = 'none', guisp = nil }
hi.Macro        = { guifg = M.colors.base08, guibg = nil,             gui = nil,    guisp = nil }
hi.MatchParen   = { guifg = nil,             guibg = M.colors.base03, gui = nil,    guisp = nil }
hi.ModeMsg      = { guifg = M.colors.base0B, guibg = nil,             gui = nil,    guisp = nil }
hi.MoreMsg      = { guifg = M.colors.base0B, guibg = nil,             gui = nil,    guisp = nil }
hi.Question     = { guifg = M.colors.base0D, guibg = nil,             gui = nil,    guisp = nil }
hi.Search       = { guifg = M.colors.base01, guibg = M.colors.base0A, gui = nil,    guisp = nil }
hi.Substitute   = { guifg = M.colors.base01, guibg = M.colors.base0A, gui = 'none', guisp = nil }
hi.SpecialKey   = { guifg = M.colors.base03, guibg = nil,             gui = nil,    guisp = nil }
hi.TooLong      = { guifg = M.colors.base08, guibg = nil,             gui = nil,    guisp = nil }
hi.Underlined   = { guifg = M.colors.base08, guibg = nil,             gui = nil,    guisp = nil }
hi.Visual       = { guifg = nil,             guibg = M.colors.base02, gui = nil,    guisp = nil }
hi.VisualNOS    = { guifg = M.colors.base08, guibg = nil,             gui = nil,    guisp = nil }
hi.WarningMsg   = { guifg = M.colors.base08, guibg = nil,             gui = nil,    guisp = nil }
hi.WildMenu     = { guifg = M.colors.base08, guibg = M.colors.base0A, gui = nil,    guisp = nil }
hi.Title        = { guifg = M.colors.base0D, guibg = nil,             gui = 'none', guisp = nil }
hi.Conceal      = { guifg = M.colors.base0D, guibg = M.colors.base00, gui = nil,    guisp = nil }
hi.Cursor       = { guifg = M.colors.base00, guibg = M.colors.base05, gui = nil,    guisp = nil }
hi.NonText      = { guifg = M.colors.base03, guibg = nil,             gui = nil,    guisp = nil }
hi.LineNr       = { guifg = M.colors.base04, guibg = M.colors.base00, gui = nil,    guisp = nil }
hi.SignColumn   = { guifg = M.colors.base04, guibg = M.colors.base00, gui = nil,    guisp = nil }
hi.StatusLine   = { guifg = M.colors.base04, guibg = M.colors.base02, gui = 'none', guisp = nil }
hi.StatusLineNC = { guifg = M.colors.base03, guibg = M.colors.base01, gui = 'none', guisp = nil }
hi.VertSplit    = { guifg = M.colors.base05, guibg = M.colors.base00, gui = 'none', guisp = nil }
hi.ColorColumn  = { guifg = nil,             guibg = M.colors.base01, gui = 'none', guisp = nil }
hi.CursorColumn = { guifg = nil,             guibg = M.colors.base01, gui = 'none', guisp = nil }
hi.CursorLine   = { guifg = nil,             guibg = M.colors.base01, gui = 'none', guisp = nil }
hi.CursorLineNr = { guifg = M.colors.base04, guibg = M.colors.base01, gui = nil,    guisp = nil }
hi.QuickFixLine = { guifg = nil,             guibg = M.colors.base01, gui = 'none', guisp = nil }
hi.PMenu        = { guifg = M.colors.base05, guibg = M.colors.base01, gui = 'none', guisp = nil }
hi.PMenuSel     = { guifg = M.colors.base01, guibg = M.colors.base05, gui = nil,    guisp = nil }
hi.TabLine      = { guifg = M.colors.base03, guibg = M.colors.base01, gui = 'none', guisp = nil }
hi.TabLineFill  = { guifg = M.colors.base03, guibg = M.colors.base01, gui = 'none', guisp = nil }
hi.TabLineSel   = { guifg = M.colors.base0B, guibg = M.colors.base01, gui = 'none', guisp = nil }

-- Standard syntax highlighting
hi.Boolean      = { guifg = M.colors.base09, guibg = nil,             gui = nil,    guisp = nil }
hi.Character    = { guifg = M.colors.base08, guibg = nil,             gui = nil,    guisp = nil }
hi.Comment      = { guifg = M.colors.base03, guibg = nil,             gui = nil,    guisp = nil }
hi.Conditional  = { guifg = M.colors.base0E, guibg = nil,             gui = nil,    guisp = nil }
hi.Constant     = { guifg = M.colors.base09, guibg = nil,             gui = nil,    guisp = nil }
hi.Define       = { guifg = M.colors.base0E, guibg = nil,             gui = 'none', guisp = nil }
hi.Delimiter    = { guifg = M.colors.base0F, guibg = nil,             gui = nil,    guisp = nil }
hi.Float        = { guifg = M.colors.base09, guibg = nil,             gui = nil,    guisp = nil }
hi.Function     = { guifg = M.colors.base0D, guibg = nil,             gui = nil,    guisp = nil }
hi.Identifier   = { guifg = M.colors.base08, guibg = nil,             gui = 'none', guisp = nil }
hi.Include      = { guifg = M.colors.base0D, guibg = nil,             gui = nil,    guisp = nil }
hi.Keyword      = { guifg = M.colors.base0E, guibg = nil,             gui = nil,    guisp = nil }
hi.Label        = { guifg = M.colors.base0A, guibg = nil,             gui = nil,    guisp = nil }
hi.Number       = { guifg = M.colors.base09, guibg = nil,             gui = nil,    guisp = nil }
hi.Operator     = { guifg = M.colors.base05, guibg = nil,             gui = 'none', guisp = nil }
hi.PreProc      = { guifg = M.colors.base0A, guibg = nil,             gui = nil,    guisp = nil }
hi.Repeat       = { guifg = M.colors.base0A, guibg = nil,             gui = nil,    guisp = nil }
hi.Special      = { guifg = M.colors.base0C, guibg = nil,             gui = nil,    guisp = nil }
hi.SpecialChar  = { guifg = M.colors.base0F, guibg = nil,             gui = nil,    guisp = nil }
hi.Statement    = { guifg = M.colors.base08, guibg = nil,             gui = nil,    guisp = nil }
hi.StorageClass = { guifg = M.colors.base0A, guibg = nil,             gui = nil,    guisp = nil }
hi.String       = { guifg = M.colors.base0B, guibg = nil,             gui = nil,    guisp = nil }
hi.Structure    = { guifg = M.colors.base0E, guibg = nil,             gui = nil,    guisp = nil }
hi.Tag          = { guifg = M.colors.base0A, guibg = nil,             gui = nil,    guisp = nil }
hi.Todo         = { guifg = M.colors.base0A, guibg = M.colors.base01, gui = nil,    guisp = nil }
hi.Type         = { guifg = M.colors.base0A, guibg = nil,             gui = 'none', guisp = nil }
hi.Typedef      = { guifg = M.colors.base0A, guibg = nil,             gui = nil,    guisp = nil }

-- Diff highlighting
hi.DiffAdd     = { guifg = M.colors.base0B, guibg = M.colors.base00,  gui = nil, guisp = nil }
hi.DiffChange  = { guifg = M.colors.base03, guibg = M.colors.base00,  gui = nil, guisp = nil }
hi.DiffDelete  = { guifg = M.colors.base08, guibg = M.colors.base00,  gui = nil, guisp = nil }
hi.DiffText    = { guifg = M.colors.base0D, guibg = M.colors.base00,  gui = nil, guisp = nil }
hi.DiffAdded   = { guifg = M.colors.base0B, guibg = M.colors.base00,  gui = nil, guisp = nil }
hi.DiffFile    = { guifg = M.colors.base08, guibg = M.colors.base00,  gui = nil, guisp = nil }
hi.DiffNewFile = { guifg = M.colors.base0B, guibg = M.colors.base00,  gui = nil, guisp = nil }
hi.DiffLine    = { guifg = M.colors.base0D, guibg = M.colors.base00,  gui = nil, guisp = nil }
hi.DiffRemoved = { guifg = M.colors.base08, guibg = M.colors.base00,  gui = nil, guisp = nil }

-- Git highlighting
hi.gitcommitOverflow      = { guifg = M.colors.base08, guibg = nil, gui = nil,    guisp = nil }
hi.gitcommitSummary       = { guifg = M.colors.base0B, guibg = nil, gui = nil,    guisp = nil }
hi.gitcommitComment       = { guifg = M.colors.base03, guibg = nil, gui = nil,    guisp = nil }
hi.gitcommitUntracked     = { guifg = M.colors.base03, guibg = nil, gui = nil,    guisp = nil }
hi.gitcommitDiscarded     = { guifg = M.colors.base03, guibg = nil, gui = nil,    guisp = nil }
hi.gitcommitSelected      = { guifg = M.colors.base03, guibg = nil, gui = nil,    guisp = nil }
hi.gitcommitHeader        = { guifg = M.colors.base0E, guibg = nil, gui = nil,    guisp = nil }
hi.gitcommitSelectedType  = { guifg = M.colors.base0D, guibg = nil, gui = nil,    guisp = nil }
hi.gitcommitUnmergedType  = { guifg = M.colors.base0D, guibg = nil, gui = nil,    guisp = nil }
hi.gitcommitDiscardedType = { guifg = M.colors.base0D, guibg = nil, gui = nil,    guisp = nil }
hi.gitcommitBranch        = { guifg = M.colors.base09, guibg = nil, gui = 'bold', guisp = nil }
hi.gitcommitUntrackedFile = { guifg = M.colors.base0A, guibg = nil, gui = nil,    guisp = nil }
hi.gitcommitUnmergedFile  = { guifg = M.colors.base08, guibg = nil, gui = 'bold', guisp = nil }
hi.gitcommitDiscardedFile = { guifg = M.colors.base08, guibg = nil, gui = 'bold', guisp = nil }
hi.gitcommitSelectedFile  = { guifg = M.colors.base0B, guibg = nil, gui = 'bold', guisp = nil }

-- GitGutter highlighting
hi.GitGutterAdd          = { guifg = M.colors.base0B, guibg = M.colors.base00, gui = nil, guisp = nil }
hi.GitGutterChange       = { guifg = M.colors.base0D, guibg = M.colors.base00, gui = nil, guisp = nil }
hi.GitGutterDelete       = { guifg = M.colors.base08, guibg = M.colors.base00, gui = nil, guisp = nil }
hi.GitGutterChangeDelete = { guifg = M.colors.base0E, guibg = M.colors.base00, gui = nil, guisp = nil }

-- Spelling highlighting
hi.SpellBad   = { guifg = nil, guibg = nil, gui = 'undercurl', guisp = M.colors.base08 }
hi.SpellLocal = { guifg = nil, guibg = nil, gui = 'undercurl', guisp = M.colors.base0C }
hi.SpellCap   = { guifg = nil, guibg = nil, gui = 'undercurl', guisp = M.colors.base0D }
hi.SpellRare  = { guifg = nil, guibg = nil, gui = 'undercurl', guisp = M.colors.base0E }

hi.LspReferenceText                   = { guifg = nil,             guibg = nil, gui = 'underline', guisp = M.colors.base04 }
hi.LspReferenceRead                   = { guifg = nil,             guibg = nil, gui = 'underline', guisp = M.colors.base04 }
hi.LspReferenceWrite                  = { guifg = nil,             guibg = nil, gui = 'underline', guisp = M.colors.base04 }
hi.LspDiagnosticsDefaultError         = { guifg = M.colors.base08, guibg = nil, gui = 'none',      guisp = nil             }
hi.LspDiagnosticsDefaultWarning       = { guifg = M.colors.base0E, guibg = nil, gui = 'none',      guisp = nil             }
hi.LspDiagnosticsDefaultInformation   = { guifg = M.colors.base05, guibg = nil, gui = 'none',      guisp = nil             }
hi.LspDiagnosticsDefaultHint          = { guifg = M.colors.base0C, guibg = nil, gui = 'none',      guisp = nil             }
hi.LspDiagnosticsUnderlineError       = { guifg = nil,             guibg = nil, gui = 'undercurl', guisp = M.colors.base08 }
hi.LspDiagnosticsUnderlineWarning     = { guifg = nil,             guibg = nil, gui = 'undercurl', guisp = M.colors.base0E }
hi.LspDiagnosticsUnderlineInformation = { guifg = nil,             guibg = nil, gui = 'undercurl', guisp = M.colors.base0F }
hi.LspDiagnosticsUnderlineHint        = { guifg = nil,             guibg = nil, gui = 'undercurl', guisp = M.colors.base0C }

hi.TSAnnotation         = { guifg = M.colors.base0F, guibg = nil, gui = 'none',          guisp = nil }
hi.TSAttribute          = { guifg = M.colors.base0A, guibg = nil, gui = 'none',          guisp = nil }
hi.TSBoolean            = { guifg = M.colors.base09, guibg = nil, gui = 'none',          guisp = nil }
hi.TSCharacter          = { guifg = M.colors.base08, guibg = nil, gui = 'none',          guisp = nil }
hi.TSComment            = { guifg = M.colors.base03, guibg = nil, gui = 'italic',        guisp = nil }
hi.TSConstructor        = { guifg = M.colors.base0D, guibg = nil, gui = 'none',          guisp = nil }
hi.TSConditional        = { guifg = M.colors.base0E, guibg = nil, gui = 'none',          guisp = nil }
hi.TSConstant           = { guifg = M.colors.base09, guibg = nil, gui = 'none',          guisp = nil }
hi.TSConstBuiltin       = { guifg = M.colors.base09, guibg = nil, gui = 'italic',        guisp = nil }
hi.TSConstMacro         = { guifg = M.colors.base08, guibg = nil, gui = 'none',          guisp = nil }
hi.TSError              = { guifg = M.colors.base08, guibg = nil, gui = 'none',          guisp = nil }
hi.TSException          = { guifg = M.colors.base08, guibg = nil, gui = 'none',          guisp = nil }
hi.TSField              = { guifg = M.colors.base05, guibg = nil, gui = 'none',          guisp = nil }
hi.TSFloat              = { guifg = M.colors.base09, guibg = nil, gui = 'none',          guisp = nil }
hi.TSFunction           = { guifg = M.colors.base0D, guibg = nil, gui = 'none',          guisp = nil }
hi.TSFuncBuiltin        = { guifg = M.colors.base0D, guibg = nil, gui = 'italic',        guisp = nil }
hi.TSFuncMacro          = { guifg = M.colors.base08, guibg = nil, gui = 'none',          guisp = nil }
hi.TSInclude            = { guifg = M.colors.base0D, guibg = nil, gui = 'none',          guisp = nil }
hi.TSKeyword            = { guifg = M.colors.base0E, guibg = nil, gui = 'none',          guisp = nil }
hi.TSKeywordFunction    = { guifg = M.colors.base0E, guibg = nil, gui = 'none',          guisp = nil }
hi.TSKeywordOperator    = { guifg = M.colors.base0E, guibg = nil, gui = 'none',          guisp = nil }
hi.TSLabel              = { guifg = M.colors.base0A, guibg = nil, gui = 'none',          guisp = nil }
hi.TSMethod             = { guifg = M.colors.base0D, guibg = nil, gui = 'none',          guisp = nil }
hi.TSNamespace          = { guifg = M.colors.base08, guibg = nil, gui = 'none',          guisp = nil }
hi.TSNone               = { guifg = M.colors.base05, guibg = nil, gui = 'none',          guisp = nil }
hi.TSNumber             = { guifg = M.colors.base09, guibg = nil, gui = 'none',          guisp = nil }
hi.TSOperator           = { guifg = M.colors.base05, guibg = nil, gui = 'none',          guisp = nil }
hi.TSParameter          = { guifg = M.colors.base05, guibg = nil, gui = 'none',          guisp = nil }
hi.TSParameterReference = { guifg = M.colors.base05, guibg = nil, gui = 'none',          guisp = nil }
hi.TSProperty           = { guifg = M.colors.base05, guibg = nil, gui = 'none',          guisp = nil }
hi.TSPunctDelimiter     = { guifg = M.colors.base0F, guibg = nil, gui = 'none',          guisp = nil }
hi.TSPunctBracket       = { guifg = M.colors.base05, guibg = nil, gui = 'none',          guisp = nil }
hi.TSPunctSpecial       = { guifg = M.colors.base05, guibg = nil, gui = 'none',          guisp = nil }
hi.TSRepeat             = { guifg = M.colors.base0A, guibg = nil, gui = 'none',          guisp = nil }
hi.TSString             = { guifg = M.colors.base0B, guibg = nil, gui = 'none',          guisp = nil }
hi.TSStringRegex        = { guifg = M.colors.base0C, guibg = nil, gui = 'none',          guisp = nil }
hi.TSStringEscape       = { guifg = M.colors.base0C, guibg = nil, gui = 'none',          guisp = nil }
hi.TSSymbol             = { guifg = M.colors.base0B, guibg = nil, gui = 'none',          guisp = nil }
hi.TSTag                = { guifg = M.colors.base0A, guibg = nil, gui = 'none',          guisp = nil }
hi.TSTagDelimiter       = { guifg = M.colors.base0F, guibg = nil, gui = 'none',          guisp = nil }
hi.TSText               = { guifg = M.colors.base05, guibg = nil, gui = 'none',          guisp = nil }
hi.TSStrong             = { guifg = nil,             guibg = nil, gui = 'bold',          guisp = nil }
hi.TSEmphasis           = { guifg = M.colors.base09, guibg = nil, gui = 'italic',        guisp = nil }
hi.TSUnderline          = { guifg = M.colors.base00, guibg = nil, gui = 'underline',     guisp = nil }
hi.TSStrike             = { guifg = M.colors.base00, guibg = nil, gui = 'strikethrough', guisp = nil }
hi.TSTitle              = { guifg = M.colors.base0D, guibg = nil, gui = 'none',          guisp = nil }
hi.TSLiteral            = { guifg = M.colors.base09, guibg = nil, gui = 'none',          guisp = nil }
hi.TSURI                = { guifg = M.colors.base09, guibg = nil, gui = 'underline',     guisp = nil }
hi.TSType               = { guifg = M.colors.base0A, guibg = nil, gui = 'none',          guisp = nil }
hi.TSTypeBuiltin        = { guifg = M.colors.base0A, guibg = nil, gui = 'italic',        guisp = nil }
hi.TSVariable           = { guifg = M.colors.base08, guibg = nil, gui = 'none',          guisp = nil }
hi.TSVariableBuiltin    = { guifg = M.colors.base08, guibg = nil, gui = 'italic',        guisp = nil }

hi.TSDefinition      = { guifg = nil, guibg = nil, gui = 'underline', guisp = M.colors.base04 }
hi.TSDefinitionUsage = { guifg = nil, guibg = nil, gui = 'underline', guisp = M.colors.base04 }
hi.TSCurrentScope    = { guifg = nil, guibg = nil, gui = 'bold',      guisp = nil }

hi.NvimInternalError = { guifg = M.colors.base00, guibg = M.colors.base08, gui = 'none', guisp = nil }

hi.NormalFloat  = { guifg = M.colors.base05, guibg = M.colors.base00, gui = nil,    guisp = nil }
hi.FloatBorder  = { guifg = M.colors.base05, guibg = M.colors.base00, gui = nil,    guisp = nil }
hi.NormalNC     = { guifg = M.colors.base05, guibg = M.colors.base00, gui = nil,    guisp = nil }
hi.TermCursor   = { guifg = M.colors.base00, guibg = M.colors.base05, gui = 'none', guisp = nil }
hi.TermCursorNC = { guifg = M.colors.base00, guibg = M.colors.base05, gui = nil,    guisp = nil }

hi.User1 = { guifg = M.colors.base08, guibg = M.colors.base02, gui = 'none', guisp = nil }
hi.User2 = { guifg = M.colors.base0E, guibg = M.colors.base02, gui = 'none', guisp = nil }
hi.User3 = { guifg = M.colors.base05, guibg = M.colors.base02, gui = 'none', guisp = nil }
hi.User4 = { guifg = M.colors.base0C, guibg = M.colors.base02, gui = 'none', guisp = nil }
hi.User5 = { guifg = M.colors.base01, guibg = M.colors.base02, gui = 'none', guisp = nil }
hi.User6 = { guifg = M.colors.base05, guibg = M.colors.base02, gui = 'none', guisp = nil }
hi.User7 = { guifg = M.colors.base05, guibg = M.colors.base02, gui = 'none', guisp = nil }
hi.User8 = { guifg = M.colors.base00, guibg = M.colors.base02, gui = 'none', guisp = nil }
hi.User9 = { guifg = M.colors.base00, guibg = M.colors.base02, gui = 'none', guisp = nil }

hi.TreesitterContext = { guifg = nil, guibg = M.colors.base01, gui = 'italic', guisp = nil }

vim.g.terminal_color_0  = M.colors.base00
vim.g.terminal_color_1  = M.colors.base08
vim.g.terminal_color_2  = M.colors.base0B
vim.g.terminal_color_3  = M.colors.base0A
vim.g.terminal_color_4  = M.colors.base0D
vim.g.terminal_color_5  = M.colors.base0E
vim.g.terminal_color_6  = M.colors.base0C
vim.g.terminal_color_7  = M.colors.base05
vim.g.terminal_color_8  = M.colors.base03
vim.g.terminal_color_9  = M.colors.base08
vim.g.terminal_color_10 = M.colors.base0B
vim.g.terminal_color_11 = M.colors.base0A
vim.g.terminal_color_12 = M.colors.base0D
vim.g.terminal_color_13 = M.colors.base0E
vim.g.terminal_color_14 = M.colors.base0C
vim.g.terminal_color_15 = M.colors.base07

-- highlight({
--     -- General
--     -- Conceal = { guifg = base0D, guibg = base00 },
--     Cursor = { guifg = base00 },
--     CursorLine = { guibg = colors.cursorLine },
--     CursorLineNr = { guifg = base0A, guibg = colors.cursorLine },
--     Directory = { guifg = base0D },
--     ErrorMsg = { guifg = base08, guibg = colors.background },
--     Folded = { guifg = colors.comment, guibg = colors.cursorLine },
--     IncSearch = { guifg = base01, guibg = base09 },
--     LineNr = { guifg = colors.lineNumber, guibg = colors.background },
--     -- Macro = { guifg = base08 },
--     MatchParen = { guibg = base03 },
--     MoreMsg = { guifg = base0B },
--     NonText = { guifg = colors.comment },
--     -- Normal = { guifg = base05, guibg = colors.background },
--     Normal = { guibg = colors.background },
--     NormalFloat = { guifg = base05, guibg = colors.dark_background },
--     NormalNC = { guifg = base05, guibg = colors.background },
--     FloatBorder = { guifg = base05, guibg = base00 },
--     Pmenu = { guifg = base05, guibg = colors.dark_background },
--     PmenuSbar = { guifg = base05, guibg = colors.dark_background },
--     PmenuSel = { guifg = colors.dark_background, guibg = base0B },
--     PmenuThumb = { guifg = base05, guibg = colors.scrollbar },
--     Question = { guifg = base0D },
--     -- QuickFixLine = { guibg = base01 },
--     Search = { guifg = base01, guibg = base0A },
--     SignColumn = { guifg = base04, guibg = colors.background },
--     SpecialKey = { guifg = base03 },
--     StatusLine = { guifg = base04, guibg = base02 },
--     StatucLineNC = { guifg = colors.border, guibg = colors.dark_background, gui = 'underline' },
--     Substitute = { guifg = base01, guibg = base0A },
--     TermCursor = { guifg = colors.background, guibg = base0C },
--     TermCursorNC = { guifg = colors.background, guibg = base05 },
--     Title = { guifg = base0D },
--     VertSplit = { guifg = colors.dark_background, guibg = colors.dark_background },
--     Visual = { guibg = colors.cursorLine },
--     VisualNOS = { guifg = base08 },
--     WarningMsg = { guifg = base08 },
--     -- WildMenu = { guifg = base00, guibg = base05 },

--     -- Spell
--     SpellBad = { gui = 'undercurl', guisp = base08 },
--     SpellLocal = { gui = 'undercurl', guisp = base0C },
--     SpellCap = { gui = 'undercurl', guisp = base0D },
--     SpellRare = { gui = 'undercurl', guisp = base0E },

--     -- Syntax
--     Comment = { guifg = base03, gui = 'italic' },
--     Constant = { guifg = base09, gui = 'italic' },
--     String = { guifg = base0B },
--     Character = { guifg = base0C },
--     Number = { guifg = base09, gui = 'italic' },
--     Boolean = { guifg = base09, gui = 'italic' },
--     Float = { guifg = base09, gui = 'italic' },
--     Identifier = { guifg = base08 },
--     Fuction = { guifg = base0D },
--     Statement = { guifg = base0E },
--     Conditional = { guifg = base0E, gui = 'italic' },
--     Repeat = { guifg = base0E, gui = 'italic' },
--     Label = { guifg = base0E },
--     Operator = { guifg = base05 },
--     Keyword = { guifg = base0E, gui = 'italic' },
--     Exception = { guifg = base0E },
--     PreProc = { guifg = base0A },
--     Include = { guifg = base0D },
--     Define = { guifg = base0D },
--     Marco = { guifg = base0D },
--     PreCondit = { guifg = base0D },
--     Type = { guifg = base0D },
--     TypeDef = { guifg = base0A },
--     StorageClass = { guifg = base0E },
--     Structure = { guifg = base0E },
--     Special = { guifg = base0C },
--     SpecialChar = { guifg = base0C },
--     Tag = { guifg = base0A, gui = 'underline' },
--     Delimiter = { guifg = base0F },
--     SpecialComment = { guifg = base0C },
--     Debug = { guifg = base08 },
--     Underlined = { guifg = base05, gui = 'bold,underline' },
--     Error = { guifg = base00, guibg = base08 },
--     Todo = { guifg = base0A, guibg = base01 },

--     -- LSP
--     LspReferenceText = { gui = 'underline', guisp = base04 },
--     LspReferenceRead = { gui = 'underline', guisp = base04 },
--     LspReferenceWrite = { gui = 'underline', guisp = base04 },
--     LspDiagnosticsDefaultError = { guifg = base08 },
--     LspDiagnosticsDefaultWarning = { guifg = base0A },
--     LspDiagnosticsDefaultInformation = { guifg = base0D },
--     LspDiagnosticsDefaultHint = { guifg = base0B },
--     LspDiagnosticsUnderlineError = { gui = 'undercurl', guisp = base08 },
--     LspDiagnosticsUnderlineWarning = { gui = 'undercurl', guisp = base0A },
--     LspDiagnosticsUnderlineInformation = { gui = 'undercurl', guisp = base0D },
--     LspDiagnosticsUnderlineHint = { gui = 'undercurl', guisp = base0B },

--     -- Treesitter
--     TSAnnotation = { guifg = base0A },
--     TSAttribute = { guifg = base0A },
--     TSBoolean = { guifg = base09, gui = 'italic' },
--     TSCharacter = { guifg = base0C },
--     TSComment = { guifg = base03, gui = 'italic' },
--     TSConstructor = { guifg = base0C },
--     TSConditional = { guifg = base0E, gui = 'italic' },
--     TSConstant = { guifg = base09, gui = 'italic' },
--     TSConstBuiltin = { guifg = base0E },
--     TSConstMacro = { guifg = base0E },
--     TSError = { guifg = base08 },
--     TSException = { guifg = base0E },
--     TSField = { guifg = base08 },
--     TSFloat = { guifg = base09, gui = 'italic' },
--     TSFunction = { guifg = base0D },
--     TSFuncBuiltin = { guifg = base0E, gui = 'italic' },
--     TSFuncMarcro = { guifg = base0D },
--     TSInclude = { guifg = base0D },
--     TSKeyword = { guifg = base0E, gui = 'italic' },
--     TSKeywordFunction = { guifg = base0E, gui = 'italic' },
--     TSKeywordOperator = { guifg = base0E, gui = 'italic' },
--     TSLabel = { guifg = base0E },
--     TSMethod = { guifg = base0D },
--     TSNamespace = { guifg = base0E },
--     TSNone = { guifg = base0E },
--     TSNumber = { guifg = base09, gui = 'italic' },
--     TSOperator = { guifg = base0E },
--     TSParameter = { guifg = base08 },
--     TSParameterReference = { guifg = base08 },
--     TSProperty = { guifg = base0A },
--     TSPunctDelimiter = { guifg = base0F },
--     TSPunctBracket = { guifg = base0C },
--     TSPunctSpecial = { guifg = base0F },
--     TSRepeat = { guifg = base0E, gui = 'italic' },
--     TSString = { guifg = base0B },
--     TSStringRegex = { guifg = base0B },
--     TSStringEscape = { guifg = base0C },
--     TSStringSpecial = { guifg = base0B },
--     TSSymbol = { guifg = base0B },
--     TSTag = { guifg = base0A },
--     TSTagAttribute = { guifg = base0A },
--     TSTagDelimiter = { guifg = base0F },
--     TSText = { guifg = base08 },
--     TSStrong = { gui = 'bold' },
--     TSEmphasis = { guifg = base09, gui = 'italic' },
--     TSUnderline = { guifg = base00, gui = 'underline' },
--     TSStrike = { guifg = base00, gui = 'strikethrough' },
--     TSTitle = { guifg = base0D },
--     TSLiteral = { guifg = base09 },
--     TSURI = { guifg = base09, gui = 'underline' },
--     TSMath = { guifg = base0E },
--     TSType = { guifg = base0A, gui = 'italic' },
--     TSTypeBuiltin = { guifg = base0E },
--     TSVariable = { guifg = base08 },
--     TSVariableBuiltin = { guifg = base0E, 'italic' },

--     -- TSDefinition = { gui = 'underline', guisp = base04 },
--     -- TSDefinitionUsage = { gui = 'underline', guisp = base04 },
--     -- TSCurrentScope = { gui = 'bold' },

--     -- Diff
--     DiffAdd = { guifg = base0B, guibg = base00 },
--     DiffChange = { guifg = base03, guibg = base00 },
--     DiffDelete = { guifg = base08, guibg = base00 },
--     DiffText = { guifg = base0D, guibg = base00 },
--     DiffAdded = { guifg = base0B, guibg = base00 },
--     DiffFile = { guifg = base08, guibg = base00 },
--     DiffNewFile = { guifg = base0B, guibg = base00 },
--     DiffLine = { guifg = base0D, guibg = base00 },
--     DiffRemoved = { guifg = base08, guibg = base00 },

--     IndentBlanklineContextChar = { guifg = base0A },

--     -- Status line
--     StatuslineBackground = { guibg = colors.dark_background },
--     StatuslineDiagnosticsError = { guifg = base08, guibg = colors.dark_background },
--     StatuslineDiagnosticsWarning = { guifg = base0A, guibg = colors.dark_background },
--     StatuslineDiffAdded = { guifg = base0B, guibg = colors.dark_background },
--     StatuslineDiffModified = { guifg = base0D, guibg = colors.dark_background },
--     StatuslineDiffRemoved = { guifg = base08, guibg = colors.dark_background },
--     StatuslineSmiley = { guifg = base0A, guibg = colors.dark_background },

--     -- GitSign
--     GitSignsAdd = { guifg = base0B, guibg = colors.background },
--     GitSignsChange = { guifg = base0D, guibg = colors.background },
--     GitSignsDelete = { guifg = base08, guibg = colors.background },

--     TroubleNormal = { guibg = colors.dark_background },

--     -- Nvim-tree
--     NvimTreeFolderIcon = { guifg = base0D },
--     NvimTreeFolderName = { guifg = colors.white },
--     NvimTreeOpenedFolderName = { guifg = colors.white },
--     NvimTreeEmptyFolderName = { guifg = colors.white },
--     NvimTreeOpenedFile = { guifg = colors.white },
--     NvimTreeIndentMarker = { guifg = colors.indent },
--     NvimTreeVertSplit = { guifg = colors.dark_background, guibg = colors.dark_background },
--     NvimTreeStatuslineNc = { guifg = colors.dark_background, guibg = colors.dark_background, gui = 'underline' },
--     NvimTreeNormal = { guibg = colors.dark_background },
--     NvimTreeRootFolder = { guifg = colors.white, gui = 'bold' },

--     -- Telescope
--     TelescopeBorder = { guifg = colors.border },
--     TelescopePromptBorder = { guifg = colors.border },
--     TelescopeResultsBorder = { guifg = colors.border },
--     TelescopePreviewBorder = { guifg = colors.border },

--     DashboardHeader = { guifg = colors.comment },
--     DashboardCenter = { guifg = colors.comment },
--     DashboardShortcut = { guifg = colors.comment },

--     ScrollView = { guibg = colors.scrollbar },
-- })
