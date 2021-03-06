vim.cmd([[

let g:vimwiki_list = [{'path':'~/Repos/Wiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_markdown_link_ext = 1

" from nightfox colorscheme:
" let black      = "#393b44"
" let red        = "#c94f6d"
" let green      = "#81b29a"
" let yellow     = "#dbc074"
" let blue       = "#719cd6"
" let magenta    = "#9d79d6"
" let cyan       = "#63cdcf"
" let white      = "#dfdfe0"
" let orange     = "#f4a261"
" let pink       = "#d67ad2"

" Can't use variables in syntax highlights
hi VimwikiHeader1 guifg=#ff0000
hi VimwikiHeader2 guifg=#ffff00
hi VimwikiHeader3 guifg=#f4a261
hi VimwikiHeader4 guifg=#d67ad2

hi VimwikiLink guifg=#719cd6 gui=underline
hi VimwikiListTodo guifg=#81b29a

]])
