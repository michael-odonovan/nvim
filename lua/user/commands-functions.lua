vim.cmd([[

" copy pwd to clipboard
:command! Pwd let @+ = expand('%:p')

" changing Wword Behaviour
:command! Wword setlocal iskeyword-=-
:command! WWord setlocal iskeyword+=-

" turn line into Title Case
:command! Title :s/\<\(\w\)\(\S*\)/\u\1\L\2/g

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
