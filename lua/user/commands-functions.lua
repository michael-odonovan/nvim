vim.cmd([[

" :Fold
function! Fold()
	if &ft ==# "markdown"
		:-1read ~/Coding/my-folds/md-fold.md | execute "normal! zoell" | startinsert
	elseif &ft ==# "html"
		:-1read ~/Coding/my-folds/html-fold.html | execute "normal! zoell" | startinsert
	elseif &ft ==# "javascript"
		:-1read ~/Coding/my-folds/javascript-fold.js | execute "normal! zoell" | startinsert
	elseif &ft ==# "css"
		:-1read ~/Coding/my-folds/css-fold.css | execute "normal! zof>ll" | startinsert
	elseif &ft ==# "scss"
		:-1read ~/Coding/my-folds/css-fold.css | execute "normal! zof>ll" | startinsert
	elseif &ft ==# "vim"
		:-1read ~/Coding/my-folds/vim-fold.vim | execute "normal! zoell" | startinsert
	elseif &ft ==# "tmux"
		:-1read ~/Coding/my-folds/vim-fold.vim | execute "normal! zoell" | startinsert
	endif
endfunction
command! Fold :call Fold()


" :Hardcopy
function! Hardcopy()
	:syntax off
	:set printfont=courier:h11
	:hardcopy
	:syntax on
endfunction
command! Hardcopy :call Hardcopy()


" Clear all buffers that aren't open in a window
function Wipeout()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction
command! Wipeout :call Wipeout()

]])
