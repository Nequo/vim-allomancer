" Vim allomancer colors file
" Code file inspired by:
" - https://github.com/patstockwell/vim-monokai-tasty 
" - https://github.com/romainl/Apprentice
" 
"Author: Nadim Edde <nadimeg@gmail.com>
"TODO: Get consistency with colors and tokens

hi clear "Reset all highlighting to the defaults.  Removes all highlighting for groups added by the user

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "allomancer"

" User Options
if !exists("g:allomancer_italic")
    let g:allomancer_italic = 0
endif

if g:allomancer_italic
  let s:italic = { "cterm": "italic", "gui": "italic" }
else
  let s:italic = { "cterm": "NONE", "gui": "NONE" }
endif

"Defining UI colors
let s:black = {"cterm":"0", "gui": "#282c34"}           "Background color
let s:light_black = {"cterm":"0", "gui": "#2c323c"}
let s:dark_grey = {"cterm":"8", "gui": "#3e4452"}
let s:grey = {"cterm":"8", "gui": "#55606d"}
let s:light_grey = {"cterm": "7", "gui": "#abb2bf"}         "Foreground color
let s:white = {"cterm": "NONE", "gui": "#d6e9ff"}


"Defining highlighting colors

let s:light_red = {"cterm": "1", "gui": "#e06c75"}
let s:dark_red = {"cterm": "9", "gui": "#af5f5f"}
let s:orange = {"cterm": "11", "gui": "#FF875F"} 
let s:green = {"cterm": "2", "gui": "#87af87"}
let s:aqua = {"cterm": "6", "gui": "#5fafaf"}
let s:blue = {"cterm": "4", "gui": "#6E88A6"}
let s:purple = {"cterm": "5", "gui": "#D18EC2"} 
let s:dark_purple = {"cterm": "13", "gui": "#875faf"} "Xterm color palette 97
let s:beige = {"cterm": "3", "gui": "#D7AFAF"} 

"Special text properties
let s:none = { "cterm": "NONE", "gui": "NONE" }
let s:reverse = { "cterm": "reverse", "gui": "reverse" }
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

" UI components
call Highlight("Normal", s:light_grey, s:black, s:none)
call Highlight("Visual", s:blue, s:black, s:reverse)

call Highlight("Cursor", s:black, s:light_grey, s:none)
call Highlight("CursorLine", s:none, s:light_black, s:none)
call Highlight("CursorColumn", s:none, s:light_black, s:none)
call Highlight("CursorLineNr", s:aqua, s:light_black, s:none)
call Highlight("ColorColumn", s:none, s:none, s:none)
call Highlight("Conceal", s:none, s:none, s:none)

call Highlight("LineNr", s:grey, s:black, s:none)
call Highlight("FoldColumn", s:light_grey, s:black, s:none)
call Highlight("Folded", s:light_grey, s:black, s:none)
call Highlight("MatchParen", s:grey, s:aqua, s:reverse)

call Highlight("SignColumn", s:light_grey, s:black, s:none)
call Highlight("NonText", s:dark_grey, s:none, s:none)

" Completion Menu
call Highlight("Pmenu", s:light_grey, s:dark_grey, s:none)
call Highlight("PmenuSel", s:black, s:aqua, s:none)
call Highlight("PmenuSbar", s:none, s:grey, s:none)
call Highlight("PmenuThumb", s:blue, s:beige, s:none)

" Git diff output
call Highlight("DiffChange", s:dark_purple, s:black, s:reverse)
call Highlight("DiffText", s:orange, s:black, s:reverse)
call Highlight("DiffDelete", s:dark_red, s:black, s:reverse)
call Highlight("DiffAdd", s:green, s:black, s:reverse)

" Git Gutter

call Highlight("GitGutterAdd", s:green, s:black, s:none)
call Highlight("GitGutterChange", s:dark_purple, s:black, s:none)
call Highlight("GitGutterDelete", s:dark_red, s:black, s:none)

" Errors and warnings
call Highlight("Error", s:light_red, s:none, s:reverse)
call Highlight("ErrorMsg", s:black, s:light_red, s:none)
call Highlight("WarningMsg", s:black, s:light_red, s:none)
call Highlight("SpellBad", s:light_red, s:black, s:underline)
call Highlight("SpellRare", s:orange, s:black, s:none)
call Highlight("SpellCap", s:aqua, s:black, s:italic)
call Highlight("SpellLocal", s:green, s:black, s:italic)

call Highlight("MoreMsg", s:grey, s:black, s:none)
call Highlight("ModeMsg", s:black, s:green, s:none)
call Highlight("Question", s:green, s:black, s:none)

call Highlight("TabLine", s:blue, s:dark_grey, s:underline)
call Highlight("TabLineSel", s:black, s:blue, s:bold)
call Highlight("TabLineFill", s:dark_grey, s:dark_grey, s:none)

call Highlight("StatusLine", s:black, s:blue, s:none)
call Highlight("StatusLineNC", s:black, s:grey, s:none)
call Highlight("StatusLineTerm", s:black, s:blue, s:none)
call Highlight("StatusLineTermNC", s:black, s:grey, s:none)

call Highlight("VertSplit", s:dark_grey, s:dark_grey, s:none)
call Highlight("WildMenu", s:black, s:orange, s:none)

call Highlight("IncSearch", s:black, s:dark_red, s:bold_underline)
call Highlight("Search", s:black, s:aqua, s:bold_underline)


call Highlight("Comment", s:grey, s:none, s:none)
call Highlight("Constant", s:orange, s:black, s:none)
call Highlight("Identifier", s:blue, s:black, s:none)
call Highlight("Function", s:beige, s:black, s:none)
call Highlight("Ignore", s:none, s:none, s:none)
call Highlight("PreProc", s:aqua, s:black, s:none)
call Highlight("Special", s:green, s:black, s:none)
call Highlight("Statement", s:dark_red, s:black, s:none)
call Highlight("String", s:green, s:black, s:none)
call Highlight("Todo", s:purple, s:black, s:reverse)
call Highlight("Type", s:dark_purple, s:black, s:none)
call Highlight("StorageClass", s:light_red, s:black, s:none)
call Highlight("TypeDef", s:purple, s:black, s:none)
call Highlight("Underlined", s:aqua, s:black, s:underline)
call Highlight("SpecialKey", s:grey, s:black, s:none)
call Highlight("Title", s:white, s:black, s:none)

"Haskell (https://raw.githubusercontent.com/sdiehl/haskell-vim-proto/master/vim/syntax/haskell.vim)
call Highlight("ConId", s:beige, s:black, s:none)
call Highlight("hsType", s:purple, s:black, s:none)

"Markdown
call Highlight("markdownBold", s:white, s:black, s:bold)
call Highlight("markdownH1", s:green, s:black, s:bold)
call Highlight("markdownHeadingDelimiter", s:orange, s:black, s:bold)
call Highlight("markdownLinkText", s:blue, s:black, s:none)

"Startify
call Highlight("StartifyPath", s:grey, s:black, s:none)
call Highlight("StartifyFile", s:light_grey, s:black, s:none)
call Highlight("StartifyHeader", s:green, s:black, s:none)

"NERDTree
call Highlight("NERDTreeDir", s:blue, s:black, s:none)
call Highlight("NERDTreeUp", s:blue, s:black, s:none)

"netrw
call Highlight("netrwDir", s:blue, s:black, s:none)


let links = [
            \ ['Boolean', 'Constant'],
            \ ['Character', 'Constant'],
            \ ['Conditional', 'Statement'],
            \ ['Debug', 'Special'],
            \ ['Define', 'PreProc'],
            \ ['Delimiter', 'Special'],
            \ ['Exception', 'Statement'],
            \ ['Float', 'Number'],
            \ ['HelpCommand', 'Statement'],
            \ ['HelpExample', 'Statement'],
            \ ['Include', 'PreProc'],
            \ ['Keyword', 'Statement'],
            \ ['Label', 'Statement'],
            \ ['Macro', 'PreProc'],
            \ ['Number', 'Constant'],
            \ ['Operator', 'Statement'],
            \ ['PreCondit', 'PreProc'],
            \ ['Repeat', 'Statement'],
            \ ['SpecialChar', 'Special'],
            \ ['SpecialComment', 'Special'],
            \ ['Structure', 'Type'],
            \ ['Tag', 'Special'],
            \ ['Terminal', 'Normal'],
            \ ['htmlEndTag', 'htmlTagName'],
            \ ['htmlLink', 'Function'],
            \ ['htmlSpecialTagName', 'htmlTagName'],
            \ ['htmlTag', 'htmlTagName'],
            \ ['htmlBold', 'Normal'],
            \ ['htmlItalic', 'Normal'],
            \ ['xmlTag', 'Statement'],
            \ ['xmlTagName', 'Statement'],
            \ ['xmlEndTag', 'Statement'],
            \ ['markdownItalic', 'Preproc'],
            \ ['markdownH2', 'markDownH1'],
            \ ['markdownH3', 'markDownH1'],
            \ ['markdownH4', 'markDownH1'],
            \ ['markdownH5', 'markDownH1'],
            \ ['markdownH6', 'markDownH1'],
            \ ['asciidocQuotedEmphasized', 'Preproc'],
            \ ['diffBDiffer', 'WarningMsg'],
            \ ['diffCommon', 'WarningMsg'],
            \ ['diffDiffer', 'WarningMsg'],
            \ ['diffIdentical', 'WarningMsg'],
            \ ['diffIsA', 'WarningMsg'],
            \ ['diffNoEOL', 'WarningMsg'],
            \ ['diffOnly', 'WarningMsg'],
            \ ['diffRemoved', 'WarningMsg'],
            \ ['diffAdded', 'String'],
            \ ['pdcHeader', 'markdownH1'],
            \ ['pdcemphasis', 'markdownBold'],
            \ ['pythonBuiltin', 'Function'],
            \ ['Directory', 'Function'],
            \ ]
augroup Allomancer
    autocmd!
    autocmd ColorScheme * if expand("<amatch>") == "allomancer" | for link in links | execute 'hi link' link[0] link[1] | endfor | else | for link in links | execute 'hi link' link[0] 'NONE' | endfor | endif
augroup END
