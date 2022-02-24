vim.cmd([[

let g:vimwiki_list = [{'path':'~/Wiki', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_markdown_link_ext = 1

nmap <Leader>00 <Plug>VimwikiIndex

hi VimwikiHeader1 guifg=#d67ad2
hi VimwikiHeader2 guifg=#81b29a
hi VimwikiHeader3 guifg=#9d79d6

hi VimwikiLink guifg=#719cd6 gui=underline

" from nightfox colorscheme:
" black      = "#393b44",
" red        = "#c94f6d",
" green      = "#81b29a",
" yellow     = "#dbc074",
" blue       = "#719cd6",
" magenta    = "#9d79d6",
" cyan       = "#63cdcf",
" white      = "#dfdfe0",
" orange     = "#f4a261",
" pink       = "#d67ad2",

]])
