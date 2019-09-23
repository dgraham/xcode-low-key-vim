" Xcode Low Key (https://github.com/dgraham/xcode-low-key-vim)

" Theme setup
hi clear
syntax reset
let g:colors_name = "xcode-low-key"
set background=light

" Grayscale
let s:black =           "1d1f21" " 00
let s:light_black =     "282a2e" " 01
let s:very_dark_gray =  "373b41" " 02
let s:dark_gray =       "969896" " 03
let s:gray =            "b4b7b4" " 04
let s:light_gray =      "c5c8c6" " 05
let s:very_light_gray = "e0e0e0" " 06
let s:white =           "ffffff" " 07

" Colors
let s:red =             "b02428" " 08
let s:orange =          "de935f" " 09
let s:light_orange =    "f0c674" " 0A
let s:green =           "b5bd68" " 0B
let s:cyan =            "8abeb7" " 0C
let s:blue =            "81a2be" " 0D
let s:purple =          "b294bb" " 0E
let s:dark_red =        "89120a" " 0F

" Low Key
let s:invisible =       "7f7f7f"
let s:selection =       "cfd5d1"
let s:light_blue =      "476a97"
let s:dark_blue =       "262c6a"
let s:string =          "702c51"
let s:comment =         "435138"
let s:url =             "12139f"
let s:keyword =         s:dark_blue
let s:class =           s:light_blue
let s:function =        s:light_blue
let s:constant =        s:light_blue

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
endfun

" Vim editor colors
call <sid>hi("Directory",     s:dark_blue, "", "4", "", "")
call <sid>hi("ErrorMsg",      s:white, s:red, "15", "9", "")
call <sid>hi("MatchParen",    s:selection, s:black, "7", "0",  "reverse")
call <sid>hi("Underlined",    s:light_blue, "", "12", "", "none")
call <sid>hi("Visual",        "", s:selection, "", "7", "")
call <sid>hi("WarningMsg",    s:red, "", "9", "", "")
call <sid>hi("Title",         s:dark_blue, "", "4", "", "none")
call <sid>hi("NonText",       s:white, s:white, "15", "15", "")
call <sid>hi("Normal",        s:black, "", "0", "", "")
call <sid>hi("LineNr",        s:very_light_gray, s:white, "7", "15", "")
call <sid>hi("StatusLine",    "080808", "eeeeee", "0", "7", "bold")
call <sid>hi("StatusLineNC",  "b2b2b2", "eeeeee", "8", "7", "none")
call <sid>hi("VertSplit",     s:white, s:white, "15", "15", "")
call <sid>hi("CursorLine",    "", s:white, "", "", "none")
call <sid>hi("CursorLineNr",  s:gray, s:very_light_gray, "8", "7", "none")
call <sid>hi("PMenu",         s:black, s:very_light_gray, "0", "7", "none")
call <sid>hi("PMenuSbar",     s:black, s:light_gray, "0", "8", "none")
call <sid>hi("PMenuSel",      s:black, s:light_gray, "15", "8", "none")
call <sid>hi("PMenuThumb",    s:black, s:dark_gray, "0", "8", "none")
call <sid>hi("Search",        s:black, "fff595", "0", "11", "none")
call <sid>hi("TabLine",       "b2b2b2", "eeeeee", "8", "7", "none")
call <sid>hi("TabLineFill",   "080808", "eeeeee", "0", "7", "none")
call <sid>hi("TabLineSel",    s:black, s:white, "0", "15", "none")

" Standard syntax highlighting
call <sid>hi("Comment",        s:comment, "", "2", "", "")
call <sid>hi("SpecialComment", s:comment, "", "2", "", "")
call <sid>hi("Constant",       s:constant, "", "12", "", "")
call <sid>hi("Error",          s:white, s:red, "15", "9", "")
call <sid>hi("Function",       s:function, "", "12", "", "")
call <sid>hi("Identifier",     s:class, "", "12", "", "none")
call <sid>hi("Keyword",        s:dark_blue, "", "4", "", "")
call <sid>hi("PreProc",        s:dark_blue, "", "4", "", "")
call <sid>hi("Special",        s:black, "", "0", "", "")
call <sid>hi("Statement",      s:keyword, "", "4", "", "none")
call <sid>hi("String",         s:string, "", "5", "", "")
call <sid>hi("Todo",           s:comment, s:white, "2", "15", "bold")
call <sid>hi("Type",           s:class, "", "12", "", "none")
call <sid>hi("Typedef",        s:class, "", "12", "", "")

" CSS highlighting
call <sid>hi("cssBraces",       s:black, "", "0", "", "")
call <sid>hi("cssClassName",    s:black, "", "0", "", "")
call <sid>hi("cssClassNameDot", s:black, "", "0", "", "")

" SASS highlighting
call <sid>hi("sassClassChar", s:black, "", "0", "", "")
call <sid>hi("sassClass",     s:black, "", "0", "", "")

" Markdown highlighting
call <sid>hi("markdownUrl",              s:url, "", "12", "", "")
call <sid>hi("markdownHeadingDelimiter", s:dark_blue, "", "4", "", "")

" Directory highlighting
call <sid>hi("NERDTreeDirSlash",  s:dark_blue, "", "4", "", "")
call <sid>hi("NERDTreeExecFile",  s:light_blue, "", "12", "", "")

" Remove functions
delf <sid>hi
