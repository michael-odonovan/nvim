vim.cmd([[

" Straight into insert mode
autocmd TermOpen * startinsert

" Exit terminal with just <C-d>
augroup terminal_settings
 	autocmd!
 	autocmd BufWinEnter,WinEnter term://* startinsert
 	autocmd BufLeave term://* stopinsert
  " ignore various filetypes as those will close terminal automatically, and ignore fzf, ranger, coc
	autocmd TermClose term://*
		\ if (expand('<afile>') !~ "fzf") && (expand('<afile>') !~ "ranger") && (expand('<afile>') !~ "coc") |
		\	call nvim_input('<CR>')  |
		\ endif
augroup END

]])
