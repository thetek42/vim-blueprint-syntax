" Vim syntax file
"
" Language:    Blueprint
" Maintainers: thetek42 <git@thetek.de>
" Filenames:   *.blp
"
" REFERENCES:
" [1] https://jwestman.pages.gitlab.gnome.org/blueprint-compiler/
"
" TODO: full language support



" keywords
syn keyword bpKeyword      accessibility bind item layout menu section submenu swapped using template
syn keyword bpConst        end false horizontal no start true vertical yes

" strings and numbers
syn match   bpSpecialChar  contained '\\.'
syn region  bpString       start='"' end='"' contains=bpSpecialChar
syn region  bpTranslateStr start='_("' end='")'
syn match   bpNumber       display '\(\<\d\+\.\d*\|\.\d\+\|\<\d\+\)'

" square bracket thingies
syn region  bpBracketThing start='^\s*\[' end='\]'

" attributes
syn match   bpAttribute    display '\(\l[a-zA-Z\-_]\+:\)'

" class names
syn match   bpClassName    display '\(\u\a*\)'

" comments
syn keyword bpCommentTodo  FIXME NOTE TBD TODO XXX
syn region  bpLineComment  start='//' end='$' contains=bpCommentTodo
syn region  bpComment      start='/\*' end='\*/' contains=bpCommentTodo

" signals
syn match   bpSignal       '\(@\)\?\w\(\w\)*\(\s\+\)\?\((\)\@='
syn match   bpArrow        '=>'
syn match   bpSignalPre    '\([a-zA-Z:\-_]\+\)\(\s*=>\)\@='



" apply fancy highlighting to everything
hi def link bpKeyword      Keyword
hi def link bpString       String
hi def link bpTranslateStr String
hi def link bpSpecialChar  SpecialChar
hi def link bpNumber       Number
hi def link bpConst        Constant
hi def link bpBracketThing PreCondit
hi def link bpAttribute    Function
hi def link bpClassName    Type
hi def link bpCommentTodo  Todo
hi def link bpLineComment  Comment
hi def link bpComment      Comment
hi def link bpSignal       Function
hi def link bpArrow        Keyword
hi def link bpSignalPre    Identifier

