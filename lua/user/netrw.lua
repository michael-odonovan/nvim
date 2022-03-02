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

" open netrw if vim called without parameters
augroup auto-open-netrw
	autocmd!
  autocmd VimEnter * 
      \  if argc() == 0 |
      \  Explore! | 
      \  endif 
augroup END

" This overides the vim-vinegar disdain for the banner at the top, why? It centres the files on the page more often than not.
" let g:netrw_banner = 1

]])
