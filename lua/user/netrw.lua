vim.cmd([[

let g:netrw_liststyle = 0
let g:netrw_localrmdir='rm -r'
let g:netrw_sort_by = "name"

function! ToggleNetrw()
	if &ft ==# "netrw"
		:Rex
	else
		:Ex
	endif
endfunc

" deletes netrw's buffer once it's hidden (using ':q', for example)
autocmd FileType netrw setl bufhidden=delete

" AutoOpen NetRW if vim called without parameters i.e. vim augroup
" netrw-auto-open-if-no-params autocmd!  autocmd VimEnter * if argc() == 0 |
" Explore! | endif augroup END

]])
