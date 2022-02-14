Vim�UnDo� ��R�h�8�r:����*��/��_�9��}��   �   A" vim.opt.dogsdir = vim.fn.stdpath('config') .. '/dogs-directory'             #       #   #   #    b
G�    _�                    K        ����                                                                                                                                                                                                                                                                                                                                                V       b
><     �   J   K          " => netrw {{{   5"""""""""""""""""""""""""""""""""""""""""""""""""""""   let g:netrw_liststyle = 0   let g:netrw_localrmdir='rm -r'   let g:netrw_sort_by = "name"       B" AutoOpen NetRW if vim called without parameters i.e. vim augroup   L" netrw-auto-open-if-no-params autocmd!  autocmd VimEnter * if argc() == 0 |   " Explore! | endif augroup END       function! ToggleNetrw()   	if &ft ==# "netrw"   		:Rex   	else   		:Ex   	endif   endfunc       E" Per default, netrw leaves unmodified buffers open. This autocommand   C" deletes netrw's buffer once it's hidden (using ':q', for example)   ,autocmd FileType netrw setl bufhidden=delete       " }}}5��    J                      �      Y              5�_�                    L        ����                                                                                                                                                                                                                                                                                                                            L           `           V        b
>Z    �   K   L          " => Buffers =>  {{{   5"""""""""""""""""""""""""""""""""""""""""""""""""""""       0" Clear all buffers that aren't open in a window   function Wipeout()       let tpbl=[]   M    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')   Y    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')   %        silent execute 'bwipeout' buf   
    endfor   endfunction   'nnoremap <leader>ca :call Wipeout()<cr>        " call Wipeout() on entering Vim   %augroup wipe-all-buffers-on-leave-vim   		autocmd!   "	autocmd VimEnter * call Wipeout()   augroup END       " }}}    5��    K                      �      6              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b
>e    �                " nnoremap <space>F :,$s/�                " nnoremap <space>f :%s/5��                         g                    �                         ~                    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b
?�    �         �       �         �    5��                         6               7       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b
?�    �                5vim.opt.undodir = vim.fn.stdpath('config') .. '/undo'5��               5       7   6       5       7       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b
?�    �         �      65��                          n                      5�_�                       6    ����                                                                                                                                                                                                                                                                                                                                                             b
A     �         �      7" vim.opt.undodir = vim.fn.stdpath('config') .. '/undo'5��       6                  l                      �       2                 h                     5�_�                       @    ����                                                                                                                                                                                                                                                                                                                                                             b
A     �         �      A" vim.opt.undodir = vim.fn.stdpath('config') .. '/undo-directory'5��       2                 h                     �       2                 h                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b
A'     �                )set undodir=~/.config/nvim/undo-directory5��               )       +          )       +       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b
A+    �                +" set undodir=~/.config/nvim/undo-directory5��               +       )          +       )       5�_�                    #        ����                                                                                                                                                                                                                                                                                                                            #          %           V       b
E    �   "   #          '" Move to previous position in the file   :nnoremap <leader>o <c-o>    5��    "                      ,      C               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b
F#    �         �      )set undodir=~/.config/nvim/undo-directory5��               )       +          )       +       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b
F#    �         �      A" vim.opt.undodir = vim.fn.stdpath('config') .. '/undo-directory'5��               A       C   8       A       C       5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b
Fb    �         �      +set undosdir=~/.config/nvim/undos-directory5��               +       )          +       )       5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             b
Fb    �         �      C" vim.opt.undosdir = vim.fn.stdpath('config') .. '/undos-directory'5��               C       A   6       C       A       5�_�      !                       ����                                                                                                                                                                                                                                                                                                                                                             b
G�    �         �      )set undodir=~/.config/nvim/undo-directory5��               )       )          )       )       5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                                                             b
G�    �         �      A" vim.opt.undodir = vim.fn.stdpath('config') .. '/undo-directory'5��               A       A   6       A       A       5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                                                             b
G�    �         �      )set dogsdir=~/.config/nvim/dogs-directory5��               )       )          )       )       5�_�   "               #           ����                                                                                                                                                                                                                                                                                                                                                             b
G�    �         �      A" vim.opt.dogsdir = vim.fn.stdpath('config') .. '/dogs-directory'5��               A       A   6       A       A       5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             b
?�     �         �    �         �      Iset undodir=~/.confivim.opt.undodir = vim.fn.stdpath('config') .. '/undo'   6g/nvim/undo-directory5��                                        7       5�_�                            ����                                                                                                                                                                                                                                                                                                                            �           �          V        b
�    �                nnoremap <space>f :%s/�                nnoremap <space>F :,$s/5��                         g                    �                         ~                    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                                                  V        b
 �    �   �   �        5��    �                            :              5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        b
 �    �   �   �        5��    �                                           5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        b
!    �   �   �        5��    �                                          5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �           �           V        b
!"    �   �   �        5��    �                                           5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            p   
       u           V   
    b
!�    �   �   �        5��    �       	               T      �               5�_�                    p        ����                                                                                                                                                                                                                                                                                                                            g          n          V       b
"1    �   o   v        5��    o                      �      �               5�_�      	              c        ����                                                                                                                                                                                                                                                                                                                            K           c           V        b
"�    �   b   q        5��    b                      
      �              5�_�      
           	   b        ����                                                                                                                                                                                                                                                                                                                                                             b
%y     �   a   c        5��    a                      
                     5�_�   	              
   K        ����                                                                                                                                                                                                                                                                                                                            "           $           V        b
%�   	 �   J   c        5��    J                      �      Z              5�_�   
                |        ����                                                                                                                                                                                                                                                                                                                                                             b
&   
 �   {   }        5��    {                      �                     5�_�                   #       ����                                                                                                                                                                                                                                                                                                                                                             b
)Q     �   "   $   �      "nnoremap <leader>o <c-o>5��    "                                         �    "                                         5�_�                     "        ����                                                                                                                                                                                                                                                                                                                                                             b
)V    �   !   %        5��    !                      �      C               5�_�                    #        ����                                                                                                                                                                                                                                                                                                                                                             b
)J    �   "   $   �      nnoremap <leader>o <c-o>5��    "                                           5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                  V        b
%�     �               5��                                                  5��