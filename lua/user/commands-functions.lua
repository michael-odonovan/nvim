vim.cmd([[

" copy pwd to clipboard
:command! Pwd let @+ = expand('%:p')

" changing Wword Behaviour
:command! Wword setlocal iskeyword-=-
:command! WWord setlocal iskeyword+=-

" turn line into Title Case
:command! Title :s/\<\(\w\)\(\S*\)/\u\1\L\2/g

" :Fold
function! Fold()
	if &ft ==# "markdown"
		execute "normal! o" | :-1read ~/.config/nvim/my-folds/md-fold.md | execute "normal! zojj" | startinsert
	elseif &ft ==# "html"
		:-1read ~/.config/nvim/my-folds/html-fold.html | execute "normal! zoell" | startinsert
	elseif &ft ==# "javascript"
		:-1read ~/.config/nvim/my-folds/javascript-fold.js | execute "normal! zoell" | startinsert
	elseif &ft ==# "css"
		:-1read ~/.config/nvim/my-folds/css-fold.css | execute "normal! zof>ll" | startinsert
	elseif &ft ==# "scss"
		:-1read ~/.config/nvim/my-folds/css-fold.css | execute "normal! zof>ll" | startinsert
	elseif &ft ==# "vim"
		:-1read ~/.config/nvim/my-folds/vim-fold.vim | execute "normal! zoell" | startinsert
	elseif &ft ==# "tmux"
		:-1read ~/.config/nvim/my-folds/vim-fold.vim | execute "normal! zoell" | startinsert
	endif
endfunction
command! Fold :call Fold()


" Printing - couple of settings are in options.lua
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
