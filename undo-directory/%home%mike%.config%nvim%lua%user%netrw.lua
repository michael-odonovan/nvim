Vim�UnDo� r���'��0i䊲[��f�r=���U�              
                       b�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             b
%�     �                   �               5��                                         Z      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b
%�     �             �             5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b
%�     �                  �               5��                          g                     �                          g                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b
%�     �                  5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       b
%�     �                " => netrw {{{   5"""""""""""""""""""""""""""""""""""""""""""""""""""""5��                                 E               5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 V       b
%�    �                " }}}    5��                                               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                 V       b
%�    �                E" Per default, netrw leaves unmodified buffers open. This autocommand5��                          b      F               5�_�      	                      ����                                                                                                                                                                                                                                                                                                                                      
           V       b
%�     �                B" AutoOpen NetRW if vim called without parameters i.e. vim augroup   L" netrw-auto-open-if-no-params autocmd!  autocmd VimEnter * if argc() == 0 |   " Explore! | endif augroup END    5��                          c       �               5�_�      
           	           ����                                                                                                                                                                                                                                                                                                                                                 V       b
%�    �             �             5��                          $              �       5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                  V        b�     �             �             5��                          �               N       5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                  V        b�     �             5��                          �                      5�_�                       
    ����                                                                                                                                                                                                                                                                                                                               
                 v       b�     �               function! ToggleNetrw()5��       
                 �                     �                        �                     5�_�                             ����                                                                                                                                                                                                                                                                                                                                                 V       b�    �                function! NewTabNetrw()   	if &ft ==# "netrw"   		:Rex   	else   		:Ex   	endif   endfunc    5��                          �       O               5��