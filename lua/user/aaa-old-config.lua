vim.cmd([[

set undodir=~/.config/nvim/undo-directory

" Search for visually selected text with //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" copy pwd to clipboard
:command! Pwd let @+ = expand('%:p')


" This is needed otherwise you can only paste once:
xnoremap <silent> p p:let @"=@0<CR>

" Make yank Y behave like D & C
map Y y$

" Search shortcuts
nnoremap <space>f :%s/
nnoremap <space>F :,$s/

" Copy to the System Clipboard with YY
noremap YY "+y<CR>
noremap XX "+x<CR>

cnoremap <expr> <C-P> wildmenumode() ? "\<C-P>" : "\<C-k>"
cnoremap <expr> <C-N> wildmenumode() ? "\<C-N>" : "\<C-j>"

" Current Working Directory Stuff
nnoremap <leader>cd :cd %:p:h<CR>
nnoremap <leader>cdl :lcd %:p:h<CR>
autocmd BufEnter * silent! lcd %:p:h

" Move to previous position in the file
:nnoremap <leader>o <c-o>

" turn line into Title Case
:command! Title :s/\<\(\w\)\(\S*\)/\u\1\L\2/g

" => Changing Wword Behaviour {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands must start with a capital
:command! Wword setlocal iskeyword-=-
:command! WWord setlocal iskeyword+=-

" }}}

" => Opening Files & Folders {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>, :e ~/.config/nvim/<CR>

" Latest project
:command! Project :e ~/Javascript/client-sites/rbcmobility
:command! Blog :e ~/Javascript/michaelodonovan-net

:command! Learning :e ~/Javascript/Learning
:command! Patterns :e ~/Javascript/Learning/patterns/pages/
:command! Scratch :e ~/CodingNotes/scratch.md
:command! Vim :e ~/CodingNotes/vim.md
:command! Daytona :vs ~/.config/nvim/colors/daytona.vim
:command! Bashrc :e ~/.bashrc
:command! Source :source ~/.config/nvim/init.vim
:command! Cn :e ~/CodingNotes
:command! Cf :e ~/Coding
:command! Notes :e ~/Documents/notes-general
:command! Documents :e ~/Documents
:command! Scripts :e ~/bin
:command! Js :e ~/Javascript
:command! Desk :e ~/desktop
:command! Docs :e ~/documents
:command! Downloads :e ~/Downloads

" }}}

" => netrw {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_liststyle = 0
let g:netrw_localrmdir='rm -r'
let g:netrw_sort_by = "name"

" AutoOpen NetRW if vim called without parameters i.e. vim augroup
" netrw-auto-open-if-no-params autocmd!  autocmd VimEnter * if argc() == 0 |
" Explore! | endif augroup END

function! ToggleNetrw()
	if &ft ==# "netrw"
		:Rex
	else
		:Ex
	endif
endfunc

" Per default, netrw leaves unmodified buffers open. This autocommand
" deletes netrw's buffer once it's hidden (using ':q', for example)
autocmd FileType netrw setl bufhidden=delete

" }}}

" => Buffers =>  {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" Clear all buffers that aren't open in a window
function Wipeout()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction
nnoremap <leader>ca :call Wipeout()<cr>

" call Wipeout() on entering Vim
augroup wipe-all-buffers-on-leave-vim
	autocmd!
	autocmd VimEnter * call Wipeout()
augroup END

" }}}

" => Windows =>  {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup initvim-remember-cursor-position
	autocmd!
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" }}}

" => Terminals =>  {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" Straight into insert mode
autocmd TermOpen * startinsert

" Exit terminal with just <C-d>
 augroup terminal_settings
 	autocmd!
 	autocmd BufWinEnter,WinEnter term://* startinsert
 	autocmd BufLeave term://* stopinsert

	" and ignore various filetypes as those will close terminal automatically
	" and ignore fzf, ranger, coc
	autocmd TermClose term://*
		\ if (expand('<afile>') !~ "fzf") && (expand('<afile>') !~ "ranger") && (expand('<afile>') !~ "coc") |
		\	call nvim_input('<CR>')  |
		\ endif
augroup END

" gets rid of [Process exited 0] message on closing neovim terminal
" au TermClose * call feedkeys("i")

" }}}

" => Autosave a New Folder and File Together {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" automake directories"
augroup automkdir
	autocmd!
	autocmd BufWritePre *
				\ if !isdirectory(expand('<afile>:h')) |
				\ call mkdir(expand('<afile>:h'), 'p') |
				\ endif
augroup END

" }}}


" => Built-In Vim Markdown Settings {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""

" Syntax highlighting in ```code blocks```
let g:markdown_fenced_languages = [ 'html', 'xml', 'python', 'bash=sh', 'css', 'sass', 'javascript', 'js=javascript', 'json=javascript', 'jsx=javascript.jsx', 'typescript', 'tsx=typescript.tsx' ]

" }}}

" => Printing {{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""

" Turn off double sided printing
" duplex is double sided
set printoptions=paper:A4,duplex:off,number:y,portrait:y,left:0pc
set printfont=Courier:h10

" Neither of these work with lines that wrap
function! Hardcopy()
	:syntax off
	:set printfont=courier:h11
	:hardcopy
	:syntax on
endfunction
command! Hardcopy :call Hardcopy()

" }}}

" => Macros `m {{{

" Notice the <Esc> etc. have to be escaped with \

" CSS add !important
let @i="0f;i !important\<esc>"

" Convert html to css class
let @p="0df\"i.\<esc>f\"Da {"

" Changing general text into a Fold heading
let @j=":Fold\<cr>\<esc>3j0dawv$hd3k2lp"
let @k="d2kp"

" React css modules - change normal css styles to {styles.mystyle}
let @m="0f\"r{astyles.\<esc>f\"r}"

let @b="oborder: 1px solid red;\<esc>"

" Remove whitespace just inside a div (vim-surround)
let @d="?><cr>lx/><cr>hx<esc>"

" }}}

" => Folds {{{

command! Fold :call Fold()
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

" }}}

]])
