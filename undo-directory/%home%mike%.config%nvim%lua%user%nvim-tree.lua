Vim�UnDo� W�J)U*��/��<	�:������[�;���b{R   D       width = 30,   +                         b ��    _�                    *       ����                                                                                                                                                                                                                                                                                                                                                             b �Z    �   )   +   C          width = 30,5��    )                                        5�_�      	              @       ����                                                                                                                                                                                                                                                                                                                                                             b �e    �   ?   A   C            quit_on_open = true,5��    ?                    �                    5�_�      
           	   @       ����                                                                                                                                                                                                                                                                                                                                                             b ��    �   ?   A   C            quit_on_open = 1,5��    ?                    �                    5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                      C          V       b �*     �                   �               �              C   require'nvim-tree'.setup {     disable_netrw       = true,     hijack_netrw        = true,     open_on_setup       = false,     ignore_ft_on_setup  = {},     auto_close          = false,     open_on_tab         = false,     hijack_cursor       = false,     update_cwd          = false,     update_to_buf_dir   = {       enable = true,       auto_open = true,     },     diagnostics = {       enable = false,       icons = {         hint = "",         info = "",         warning = "",         error = "",       }     },     update_focused_file = {       enable      = false,       update_cwd  = false,       ignore_list = {}     },     system_open = {       cmd  = nil,       args = {}     },     filters = {       dotfiles = false,       custom = {}     },   	  git = {       enable = true,       ignore = true,       timeout = 500,     },   
  view = {       width = 20,       height = 30,       hide_root_folder = false,       side = 'left',       auto_resize = false,       mappings = {         custom_only = false,         list = {}       },       number = false,       relativenumber = false,       signcolumn = "yes"     },     trash = {       cmd = "trash",       require_confirm = true     },     actions = {       change_dir = {         global = false,       },       open_file = {         quit_on_open = true,       }     }   }5��            C                      �             �                    C                       �      5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                V       b �-     �          D      4      config = function() require'nvim-tree'.setup {5��                                                5�_�                            ����                                                                                                                                                                                                                                                                                                                                      D           V       b �2     �               D   2    config = function() require'nvim-tree'.setup {   !      disable_netrw       = true,   !      hijack_netrw        = true,   "      open_on_setup       = false,         ignore_ft_on_setup  = {},   "      auto_close          = false,   "      open_on_tab         = false,   "      hijack_cursor       = false,   "      update_cwd          = false,         update_to_buf_dir   = {           enable = true,           auto_open = true,         },         diagnostics = {           enable = false,           icons = {             hint = "",             info = "",             warning = "",             error = "",   	        }         },         update_focused_file = {           enable      = false,           update_cwd  = false,           ignore_list = {}         },         system_open = {           cmd  = nil,           args = {}         },         filters = {           dotfiles = false,           custom = {}         },         git = {           enable = true,           ignore = true,           timeout = 500,         },         view = {           width = 30,           height = 30,   !        hide_root_folder = false,           side = 'left',           auto_resize = false,           mappings = {             custom_only = false,             list = {}   
        },           number = false,           relativenumber = false,           signcolumn = "yes"         },         trash = {           cmd = "trash",           require_confirm = true         },         actions = {           change_dir = {             global = false,   
        },           open_file = {             quit_on_open = true,   	        }         }   	    } end    5��                                                �                         1                     �                         Q                     �                         q                     �                         �                     �                         �                     �                         �                     �                         �                     �                                             �    	                     4                    �    
                     P                    �                         e                    �                         }                    �                         �                    �                         �                    �                         �                    �               
          �      
              �               
          �      
              �               
          �      
              �               
                
              �                                             �                         "                    �                         )                    �                         E                    �                         `                    �                         {                    �                         �                    �                         �                    �                         �                    �                         �                    �                         �                    �                         �                    �                          �                    �    !                     �                    �    "                                         �    #                                         �    $                     #                    �    %                     8                    �    &                     M                    �    '                     b                    �    (                     i                    �    )                     v                    �    *                     �                    �    +                     �                    �    ,                     �                    �    -                     �                    �    .                     �                    �    /           
          �      
              �    0           
                
              �    1                     -                    �    2                     6                    �    3                     L                    �    4                     j                    �    5                     �                    �    6                     �                    �    7                     �                    �    8                     �                    �    9                     �                    �    :                     �                    �    ;                     �                    �    <           
          �      
              �    =                                         �    >                                         �    ?           
          +      
              �    @                     H                    �    A                     P                    �    B                     V                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                      D           V       b �2     �               D   0  config = function() require'nvim-tree'.setup {       disable_netrw       = true,       hijack_netrw        = true,        open_on_setup       = false,       ignore_ft_on_setup  = {},        auto_close          = false,        open_on_tab         = false,        hijack_cursor       = false,        update_cwd          = false,       update_to_buf_dir   = {         enable = true,         auto_open = true,       },       diagnostics = {         enable = false,         icons = {           hint = "",           info = "",           warning = "",           error = "",         }       },       update_focused_file = {         enable      = false,         update_cwd  = false,         ignore_list = {}       },       system_open = {         cmd  = nil,         args = {}       },       filters = {         dotfiles = false,         custom = {}       },       git = {         enable = true,         ignore = true,         timeout = 500,       },       view = {         width = 30,         height = 30,         hide_root_folder = false,         side = 'left',         auto_resize = false,         mappings = {           custom_only = false,           list = {}         },         number = false,         relativenumber = false,         signcolumn = "yes"       },       trash = {         cmd = "trash",         require_confirm = true       },       actions = {         change_dir = {           global = false,         },         open_file = {           quit_on_open = true,         }       }     } end    5��                                                  �                         /                     �                         M                     �                         k                     �                         �                     �                         �                     �                         �                     �                         �                     �                                             �    	                     "                    �    
                     <                    �                         O                    �                         e                    �                         j                    �                         |                    �                         �                    �                         �                    �                         �                    �                         �                    �                         �                    �                         �                    �                         �                    �                         �                    �                                             �                         0                    �                         I                    �                         ^                    �                         c                    �                         u                    �                         �                    �                         �                    �                         �                    �                          �                    �    !                     �                    �    "                     �                    �    #                     �                    �    $                     �                    �    %                     �                    �    &                                         �    '                                         �    (                                         �    )                     $                    �    *                     4                    �    +                     E                    �    ,                     c                    �    -                     v                    �    .                     �                    �    /                     �                    �    0                     �                    �    1                     �                    �    2                     �                    �    3                     �                    �    4                                         �    5                                         �    6                                         �    7                     *                    �    8                     =                    �    9                     X                    �    :                     ]                    �    ;                     k                    �    <                     ~                    �    =                     �                    �    >                     �                    �    ?                     �                    �    @                     �                    �    A                     �                    �    B                      �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                 v       b �M     �          D      .config = function() require'nvim-tree'.setup {5��                                                  5�_�                    C       ����                                                                                                                                                                                                                                                                                                                                                 v       b �V    �   B   D   D      } end5��    B                     �                     5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             b �n    �   )   +   D          width = 30,5��    )                                        5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             b �{    �   )   +   D          width = 50,5��    )                                        5�_�                            ����                                                                                                                                                                                                                                                                                                                                      >          V       b ��     �             =     disable_netrw       = true,     hijack_netrw        = true,     open_on_setup       = false,     ignore_ft_on_setup  = {},     auto_close          = false,     open_on_tab         = false,     hijack_cursor       = false,     update_cwd          = false,     update_to_buf_dir   = {       enable = true,       auto_open = true,     },     diagnostics = {       enable = false,       icons = {         hint = "",         info = "",         warning = "",         error = "",       }     },     update_focused_file = {       enable      = false,       update_cwd  = false,       ignore_list = {}     },     system_open = {       cmd  = nil,       args = {}     },     filters = {       dotfiles = false,       custom = {}     },   	  git = {       enable = true,       ignore = true,       timeout = 500,     },   
  view = {       width = 40,       height = 30,       hide_root_folder = false,       side = 'left',       auto_resize = false,       mappings = {         custom_only = false,         list = {}       },       number = false,       relativenumber = false,       signcolumn = "yes"     },     trash = {       cmd = "trash",       require_confirm = true     },     actions = {       change_dir = {         global = false,       },5��           =                      l              5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       b ��     �                }5��                          R                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b ��    �                   open_file = {         quit_on_open = true,       }     }5��                                              �                         +                     �                         D                     �                          H                      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             b ��     �                  �               5��                   D      J               &      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        b ��     �                 require'nvim-tree'.setup {     open_file = {       quit_on_open = true,     }   }5��                                   J               5�_�                    B       ����                                                                                                                                                                                                                                                                                                                                                  V        b �     �   A   C   E            quit_on_open = false,5��    A                                        5�_�                           ����                                                                                                                                                                                                                                                                                                                                                V       b �	    �                 $-- following options are the default5��                                   %               5�_�                    +       ����                                                                                                                                                                                                                                                                                                                                                             b ��    �   *   ,   D          width = 100%,5��    *                    ]                    5�_�                    +       ����                                                                                                                                                                                                                                                                                                                                                             b ��    �   *   ,   D          width = 100,5��    *                     `                     5�_�                    +       ����                                                                                                                                                                                                                                                                                                                            +          +          v       b �     �   *   ,   D          width = ,5��    *                     ]                     5�_�                    +       ����                                                                                                                                                                                                                                                                                                                            +          +          v       b �     �   *   ,   D          width = "",5��    *                     ]                     5�_�                     +       ����                                                                                                                                                                                                                                                                                                                                                             b �    �   *   ,   D          width = "100%",5��    *                     ^                     �    *                    a                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                V       b �     �               5��                                   f               5�_�                   *       ����                                                                                                                                                                                                                                                                                                                                                             b �d   
 �   )   +   C          width = 20,5��    )                                        5�_�                     *       ����                                                                                                                                                                                                                                                                                                                                                             b �~    �   )   +   C          width = 30,5��    )                                        5�_�                   @       ����                                                                                                                                                                                                                                                                                                                                                             b �    �   ?   A   C            quit_on_open = 1,5��    ?                    �                    5�_�                     *       ����                                                                                                                                                                                                                                                                                                                                                             b �    �   )   +   C          width = 10,5��    )                                        5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             b �     �   )   +   C          width = r0,5��    )                                        5�_�                     *       ����                                                                                                                                                                                                                                                                                                                                                             b �    �   )   +   C          width = 40,5��    )                                        5��