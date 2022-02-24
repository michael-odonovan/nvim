vim.cmd([[

let g:vimwiki_list = [{'path':'~/Wiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_markdown_link_ext = 1

nmap <Leader>00 <Plug>VimwikiIndex

" from nightfox colorscheme:
let black      = "#393b44"
let red        = "#c94f6d"
let green      = "#81b29a"
let yellow     = "#dbc074"
let blue       = "#719cd6"
let magenta    = "#9d79d6"
let cyan       = "#63cdcf"
let white      = "#dfdfe0"
let orange     = "#f4a261"
let pink       = "#d67ad2"

hi VimwikiHeader1 guifg=magenta
hi VimwikiHeader2 guifg=cyan
hi VimwikiHeader3 guifg=pink

hi VimwikiLink guifg=cyan gui=underline
hi VimwikiListTodo guifg=magenta


]])
