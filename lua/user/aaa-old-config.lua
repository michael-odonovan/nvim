vim.cmd([[

" Can't find lua equivalent ============================
" Syntax highlighting in ```code blocks```
let g:markdown_fenced_languages = [ 'html', 'xml', 'python', 'bash=sh', 'css', 'sass', 'javascript', 'js=javascript', 'json=javascript', 'jsx=javascript.jsx', 'typescript', 'tsx=typescript.tsx' ]

" Search shortcuts
nnoremap <space>f :%s/
nnoremap <space>F :,$s/

set undodir=~/.config/nvim/undo-directory




" Search for visually selected text with //
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" copy pwd to clipboard
:command! Pwd let @+ = expand('%:p')

" This is needed otherwise you can only paste once:
xnoremap <silent> p p:let @"=@0<CR>

" Copy to the System Clipboard with YY
noremap YY "+y<CR>
noremap XX "+x<CR>

" Make yank Y behave like D & C
map Y y$

cnoremap <expr> <C-P> wildmenumode() ? "\<C-P>" : "\<C-k>"
cnoremap <expr> <C-N> wildmenumode() ? "\<C-N>" : "\<C-j>"

" Current Working Directory Stuff
nnoremap <leader>cd :cd %:p:h<CR>
nnoremap <leader>cdl :lcd %:p:h<CR>
autocmd BufEnter * silent! lcd %:p:h

" turn line into Title Case
:command! Title :s/\<\(\w\)\(\S*\)/\u\1\L\2/g

" => Changing Wword Behaviour
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands must start with a capital
:command! Wword setlocal iskeyword-=-
:command! WWord setlocal iskeyword+=-



]])
