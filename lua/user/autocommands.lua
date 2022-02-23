vim.cmd([[

augroup _general_settings
  autocmd!
  autocmd FileType qf,help,man,lspinfo nnoremap <silent> <buffer> q :close<CR> 
  autocmd TextYankPost * silent!lua require('vim.highlight').on_yank({higroup = 'Visual', timeout = 200}) 
  autocmd BufWinEnter * :set formatoptions-=cro
  autocmd FileType qf set nobuflisted
augroup end


" when resizing entire window, keep splits even size
augroup _auto_resize
  autocmd!
    autocmd VimResized * wincmd =
augroup end

" set spell on all markdown files
" augroup _markdown
"   autocmd!
"   autocmd FileType markdown setlocal spell
" augroup end

" remember cursor position
augroup initvim-remember-cursor-position
	autocmd!
	autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

" automake new file and directories together"
augroup automkdir
	autocmd!
	autocmd BufWritePre *
				\ if !isdirectory(expand('<afile>:h')) |
				\ call mkdir(expand('<afile>:h'), 'p') |
				\ endif
augroup END

]])

