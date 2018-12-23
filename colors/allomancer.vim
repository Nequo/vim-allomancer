" Vim color file
"
" Author: Nadim Edde <nadimeg@gmail.com>
"

hi clear "Reset all highlighting to the defaults.  Removes all highlighting for groups added by the user

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "allomancer"

" User Options
if !exists("g:vim_allomancer_italic")
    let g:vim_monokai_tasty_italic = 0
endif

if g:vim_allomancer_italic
  let s:italic = { "cterm": "italic", "gui": "italic" }
else
  let s:italic = { "cterm": "NONE", "gui": "NONE" }
endif

"Defining UI colors
let s:black = {"cterm":"0", "gui": "#282c34"}           "Background color
let s:light_black = {"cterm":"0", "gui": "#2c323c"}
let s:grey = {"cterm":"8", "gui": "#55606d"}
let s:light_grey = {"cterm": "7" "gui": #abb2bf}         "Foreground color
let s:white = {"cterm": "NONE" "gui": #d6e9ff}


"Defining highlighting colors

let s:light_red = {"cterm": "1" "gui": #e06c75}
let s:dark_red = {"cterm": "9" "gui": #af5f5f}
let s:orange = {"cterm": "11" "gui": #FF875F} 
let s:green = {"cterm": "2" "gui": #87af87}
let s:aqua = {"cterm": "6" "gui": #5fafaf}
let s:blue = {"cterm": "4" "gui": #6E88A6}                "I promise this is blue ;)
let s:purple = {"cterm": "5" "gui": #D18EC2} 
let s:beige = {"cterm": "3" "gui": #D7AFAF} 

"Special text properties
let s:none = { "cterm": "NONE", "gui": "NONE" }
let s:bold = { "cterm": "bold", "gui": "bold" }
let s:underline = { "cterm": "underline", "gui": "underline" }
let s:bold_underline = { "cterm": "bold,underline", "gui": "bold,underline" }

" Helper function to highlight a group 
function! Highlight(group, fg, bg, style)
  exec "hi " . a:group
        \ . " ctermfg=" . a:fg["cterm"]
        \ . " ctermbg=" . a:bg["cterm"]
        \ . " cterm=" . a:style["cterm"]
        \ . " guifg=" . a:fg["gui"]
        \ . " guibg=" . a:bg["gui"]
        \ . " gui=" . a:style["gui"]
endfunction

call Highlight("Normal", s:light_grey, s:black, s:none)

call Highlight("Cursor", s:charcoal, s:light_blue, s:none)
call Highlight("Special", s:purple, s:none, s:none)
call Highlight("Title", s:white, s:none, s:bold)

call Highlight("DiffChange", s:white, s:sea_blue, s:none)
call Highlight("DiffText", s:white, s:light_sea_blue, s:none)
call Highlight("DiffDelete", s:dark_red, s:blood_red, s:none)
call Highlight("DiffAdd", s:white, s:dark_green, s:none)

call Highlight("Error", s:white, s:danger, s:none)
call Highlight("ErrorMsg", s:white, s:danger, s:none)
call Highlight("WarningMsg", s:white, s:danger, s:none)
call Highlight("SpellBad", s:white, s:danger, s:none)
call Highlight("SpellRare", s:white, s:danger, s:none)
call Highlight("SpellCap", s:charcoal, s:orange, s:italic)
call Highlight("SpellLocal", s:charcoal, s:orange, s:italic)

call Highlight("CursorLineNR", s:yellow, s:none, s:none)

call Highlight("CursorColumn", s:none, s:darker_grey, s:none)
call Highlight("ColorColumn", s:none, s:none, s:none)
call Highlight("Conceal", s:none, s:none, s:none)
call Highlight("CursorLine", s:none, s:darker_grey, s:none)
call Highlight("Type", s:none, s:none, s:none)

call Highlight("Visual", s:none, s:dark_grey, s:none)
call Highlight("TabLine", s:light_grey, s:dark_grey, s:underline)
call Highlight("Whitespace", s:dark_grey, s:none, s:none)

call Highlight("TabLineSel", s:none, s:charcoal, s:bold)

call Highlight("SignColumn", s:grey, s:darker_grey, s:none)
call Highlight("NonText", s:darker_grey, s:none, s:none)
call Highlight("TabLineFill", s:none, s:darker_grey, s:none)
call Highlight("LineNr", s:darker_grey, s:none, s:none)
call Highlight("VertSplit", s:darker_grey, s:charcoal, s:none)
call Highlight("StatusLine", s:white, s:dark_grey, s:none)
call Highlight("StatusLineNC", s:light_grey, s:darker_grey, s:none)

call Highlight("Exception", s:magenta, s:none, s:bold)
call Highlight("MatchParen", s:magenta, s:none, s:bold_underline)
call Highlight("Include", s:magenta, s:none, s:none)
call Highlight("Conditional", s:magenta, s:none, s:none)
call Highlight("Define", s:magenta, s:none, s:none)
call Highlight("Debug", s:magenta, s:none, s:none)
call Highlight("Delimiter", s:magenta, s:none, s:none)
call Highlight("Keyword", s:magenta, s:none, s:none)
call Highlight("Macro", s:magenta, s:none, s:none)
call Highlight("Operator", s:magenta, s:none, s:none)
call Highlight("PreProc", s:magenta, s:none, s:none)
call Highlight("Statement", s:magenta, s:none, s:none)
call Highlight("Repeat", s:magenta, s:none, s:none)

call Highlight("SpecialKey", s:dark_grey, s:darker_grey, s:none)
call Highlight("IncSearch", s:white, s:purple, s:bold_underline)
call Highlight("Search", s:white, s:purple, s:bold_underline)

call Highlight("Identifier", s:light_blue, s:none, s:none)
call Highlight("Question", s:light_blue, s:none, s:none)
call Highlight("StorageClass", s:light_blue, s:none, s:italic)
call Highlight("Structure", s:light_blue, s:none, s:none)

call Highlight("Function", s:light_green, s:none, s:none)

call Highlight("Constant", s:purple, s:none, s:none)
call Highlight("Directory", s:purple, s:none, s:none)
call Highlight("Tag", s:purple, s:none, s:none)
call Highlight("Boolean", s:purple, s:none, s:none)
call Highlight("Character", s:purple, s:none, s:none)
call Highlight("Float", s:purple, s:none, s:none)
call Highlight("Number", s:purple, s:none, s:none)

call Highlight("Folded", s:grey, s:charcoal, s:none)
call Highlight("Comment", s:grey, s:none, s:italic)

call Highlight("Label", s:yellow, s:none, s:none)
call Highlight("String", s:yellow, s:none, s:none)

call Highlight("Todo", s:yellow, s:dark_grey, s:bold)
call Highlight("Underlined", s:none, s:none, s:underline)

call Highlight("Pmenu", s:light_blue, s:darker_grey, s:none)
call Highlight("PmenuSel", s:yellow, s:dark_grey, s:none)
call Highlight("PmenuSbar", s:none, s:grey, s:none)
call Highlight("PmenuThumb", s:none, s:white, s:none)