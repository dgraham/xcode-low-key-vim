" Xcode Low Key (https://github.com/dgraham/xcode-low-key-vim)

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "xcode-low-key"

" Terminal color palette
" let s:black        = "#000000"  " 00 Black        ANSI Black
" let s:dark_red     = "#8b0000"  " 01 DarkRed      ANSI Red
" let s:dark_green   = "#435138"  " 02 DarkGreen    ANSI Green
" let s:brown        = "#70682d"  " 03 Brown        ANSI Yellow
" let s:dark_blue    = "#262c6a"  " 04 DarkBlue     ANSI Blue
" let s:dark_magenta = "#702c51"  " 05 DarkMagenta  ANSI Magenta
" let s:dark_cyan    = "#274f6b"  " 06 DarkCyan     ANSI Cyan
" let s:light_gray   = "#cfd5d1"  " 07 LightGray    ANSI White
" let s:dark_gray    = "#86868b"  " 08 DarkGray     ANSI Bright Black
" let s:red          = "#c70039"  " 09 Red          ANSI Bright Red
" let s:green        = "#1e4d1a"  " 0A Green        ANSI Bright Green
" let s:yellow       = "#d9cf68"  " 0B Yellow       ANSI Bright Yellow
" let s:blue         = "#476a97"  " 0C Blue         ANSI Bright Blue
" let s:magenta      = "#aa0d91"  " 0D Magenta      ANSI Bright Magenta
" let s:cyan         = "#479196"  " 0E Cyan         ANSI Bright Cyan
" let s:white        = "#ffffff"  " 0F White        ANSI Bright White

" Low Key accents in terminal colors
let s:comment  = "DarkGreen"
let s:string   = "DarkMagenta"
let s:keyword  = "DarkBlue"
let s:type     = "Blue"
let s:ident    = "Blue"
let s:url      = "Blue"
let s:error    = "Red"
let s:error_bg = "DarkRed"
let s:warn     = "Red"

if &background ==# "dark"
  let s:fg        = "White"
  let s:muted     = "DarkGray"
  let s:border    = "DarkGray"
  let s:panel     = "Black"
  let s:select_fg = "Black"
  let s:select_bg = "LightGray"
  let s:search_fg = "Black"
  let s:search_bg = "Yellow"
else
  let s:fg        = "Black"
  let s:muted     = "DarkGray"
  let s:border    = "LightGray"
  let s:panel     = "LightGray"
  let s:select_fg = "NONE"
  let s:select_bg = "LightGray"
  let s:search_fg = "Black"
  let s:search_bg = "Yellow"
endif

function! s:hi(group, fg, bg, attr) abort
  let l:parts = ["hi", a:group]
  call add(l:parts, "ctermfg=" . a:fg)
  call add(l:parts, "ctermbg=" . a:bg)
  call add(l:parts, "cterm=" . a:attr)
  execute join(l:parts, " ")
endfunction

" Base / editor
call s:hi("Normal",       "NONE",      "NONE",      "NONE")
call s:hi("CursorLine",   "NONE",      "NONE",      "NONE")
call s:hi("ColorColumn",  "NONE",      s:panel,     "NONE")
call s:hi("CursorColumn", "NONE",      s:panel,     "NONE")
call s:hi("LineNr",       s:border,    "NONE",      "NONE")
call s:hi("CursorLineNr", "NONE",      s:border,    "bold")
call s:hi("VertSplit",    s:border,    "NONE",      "NONE")
call s:hi("WinSeparator", s:border,    "NONE",      "NONE")
call s:hi("SignColumn",   "NONE",      "NONE",      "NONE")
call s:hi("FoldColumn",   s:muted,     "NONE",      "NONE")
call s:hi("NonText",      s:muted,     "NONE",      "NONE")
call s:hi("SpecialKey",   s:muted,     "NONE",      "NONE")

" Menus / status
call s:hi("StatusLine",   s:fg,        s:panel,     "bold")
call s:hi("StatusLineNC", s:muted,     s:panel,     "NONE")
call s:hi("TabLine",      s:muted,     s:panel,     "NONE")
call s:hi("TabLineFill",  s:muted,     s:panel,     "NONE")
call s:hi("TabLineSel",   s:fg,        "NONE",      "bold")
call s:hi("Pmenu",        s:fg,        "NONE",      "NONE")
call s:hi("PmenuSel",     s:select_fg, s:select_bg, "NONE")
call s:hi("PmenuSbar",    "NONE",      "NONE",      "NONE")
call s:hi("PmenuThumb",   "NONE",      s:panel,     "NONE")
call s:hi("PmenuBorder",  s:border,    "NONE",      "NONE")
call s:hi("FloatBorder",  s:border,    "NONE",      "NONE")

" Selection / search
call s:hi("Visual",       s:select_fg, s:select_bg, "NONE")
call s:hi("Search",       s:search_fg, s:search_bg, "NONE")
call s:hi("CurSearch",    s:search_fg, s:search_bg, "bold")
call s:hi("IncSearch",    s:search_fg, s:search_bg, "bold")
call s:hi("MatchParen",   "White",     s:type,      "NONE")

" Messages
call s:hi("Directory",    s:keyword,   "NONE",      "NONE")
call s:hi("Title",        s:keyword,   "NONE",      "bold")
call s:hi("Underlined",   s:url,       "NONE",      "underline")
call s:hi("WarningMsg",   s:warn,      "NONE",      "NONE")
call s:hi("ErrorMsg",     "White",     s:error_bg,  "NONE")
call s:hi("MoreMsg",      s:type,      "NONE",      "bold")
call s:hi("Question",     s:type,      "NONE",      "bold")

" Diagnostics
call s:hi("DiagnosticUnderlineError", "NONE", "NONE", "NONE")
call s:hi("DiagnosticUnderlineWarn",  "NONE", "NONE", "NONE")
call s:hi("DiagnosticUnderlineInfo",  "NONE", "NONE", "NONE")
call s:hi("DiagnosticUnderlineHint",  "NONE", "NONE", "NONE")

" Syntax
call s:hi("Comment",        s:comment,  "NONE",     "NONE")
call s:hi("SpecialComment", s:comment,  "NONE",     "NONE")
call s:hi("Constant",       s:ident,    "NONE",     "NONE")
call s:hi("String",         s:string,   "NONE",     "NONE")
call s:hi("Character",      s:string,   "NONE",     "NONE")
call s:hi("Number",         s:keyword,  "NONE",     "NONE")
call s:hi("Boolean",        s:keyword,  "NONE",     "NONE")
call s:hi("Float",          s:keyword,  "NONE",     "NONE")
call s:hi("Identifier",     s:ident,    "NONE",     "NONE")
call s:hi("Function",       s:type,     "NONE",     "NONE")
call s:hi("Statement",      s:keyword,  "NONE",     "NONE")
call s:hi("Conditional",    s:keyword,  "NONE",     "NONE")
call s:hi("Repeat",         s:keyword,  "NONE",     "NONE")
call s:hi("Label",          s:keyword,  "NONE",     "NONE")
call s:hi("Operator",       s:fg,       "NONE",     "NONE")
call s:hi("Keyword",        s:keyword,  "NONE",     "NONE")
call s:hi("Exception",      s:keyword,  "NONE",     "NONE")
call s:hi("PreProc",        s:keyword,  "NONE",     "NONE")
call s:hi("Include",        s:keyword,  "NONE",     "NONE")
call s:hi("Define",         s:keyword,  "NONE",     "NONE")
call s:hi("Macro",          s:fg,       "NONE",     "NONE")
call s:hi("PreCondit",      s:keyword,  "NONE",     "NONE")
call s:hi("Type",           s:type,     "NONE",     "NONE")
call s:hi("StorageClass",   s:keyword,  "NONE",     "NONE")
call s:hi("Structure",      s:type,     "NONE",     "NONE")
call s:hi("Typedef",        s:type,     "NONE",     "NONE")
call s:hi("Special",        s:fg,       "NONE",     "NONE")
call s:hi("SpecialChar",    s:string,   "NONE",     "NONE")
call s:hi("Tag",            s:type,     "NONE",     "NONE")
call s:hi("Delimiter",      s:fg,       "NONE",     "NONE")
call s:hi("Debug",          s:error,    "NONE",     "NONE")
call s:hi("Todo",           s:comment,  "NONE",     "bold")
call s:hi("Error",          "White",    s:error_bg, "NONE")

" Markdown
call s:hi("markdownUrl",              s:url,      "NONE", "underline")
call s:hi("markdownHeadingDelimiter", s:keyword,  "NONE", "bold")
call s:hi("markdownCode",             s:string,   "NONE", "NONE")
call s:hi("markdownCodeBlock",        s:string,   "NONE", "NONE")

delfunction s:hi
