vim.cmd([[

" Can't find lua equivalent ============================
" Syntax highlighting in ```code blocks```
let g:markdown_fenced_languages = [ 'html', 'xml', 'python', 'bash=sh', 'css', 'sass', 'javascript', 'js=javascript', 'json=javascript', 'jsx=javascript.jsx', 'typescript', 'tsx=typescript.tsx' ]

" Search shortcuts
nnoremap <space>f :%s/
nnoremap <space>F :,$s/

set undodir=~/.config/nvim/undo-directory





" This is needed otherwise you can only paste once:
xnoremap <silent> p p:let @"=@0<CR>

cnoremap <expr> <C-P> wildmenumode() ? "\<C-P>" : "\<C-k>"
cnoremap <expr> <C-N> wildmenumode() ? "\<C-N>" : "\<C-j>"

" Current Working Directory Stuff
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
nnoremap <leader>cdl :lcd %:p:h<CR>:pwd<CR>

" turn line into Title Case
:command! Title :s/\<\(\w\)\(\S*\)/\u\1\L\2/g

" => Changing Wword Behaviour
"""""""""""""""""""""""""""""""""""""""""""""""""""
" Commands must start with a capital
:command! Wword setlocal iskeyword-=-
:command! WWord setlocal iskeyword+=-



]])
