Vim�UnDo� $���L��_�'D9>���^��u*�6�r#   y                  )       )   )   )    b	@�    _�                    9   
    ����                                                                                                                                                                                                                                                                                                                                                             b ��     �   9   ;   n    5��    9                      �                     �    9                     �                     �    9                      �                     5�_�                    :        ����                                                                                                                                                                                                                                                                                                                                                             b ��     �   9   A   o       �   :   ;   o    5��    9                     �              �       5�_�                    :        ����                                                                                                                                                                                                                                                                                                                            :           @           V        b ��     �   9   A   u      use {       'kyazdani42/nvim-tree.lua',       requires = {   @      'kyazdani42/nvim-web-devicons', -- optional, for file icon       },   7    config = function() require'nvim-tree'.setup {} end   }5��    9                      �                     �    :                     �                    �    ;                     �                    �    <                     �                    �    =                                          �    >                     )                    �    ?                      c                     5�_�                    9       ����                                                                                                                                                                                                                                                                                                                            :           @           V        b �     �   8   9          1  use "kyazdani42/nvim-tree.lua" -- file explorer5��    8                      n      2               5�_�                    :   !    ����                                                                                                                                                                                                                                                                                                                            9           ?           V        b �    �   9   ;   t      !      'kyazdani42/nvim-tree.lua',5��    9   !                  �                     �    9   0                 �                    5�_�                    >   2    ����                                                                                                                                                                                                                                                                                                                                                             b ��     �   >   �   t    �   >   ?   t    5��    >               C       C              �      5�_�      	              >   4    ����                                                                                                                                                                                                                                                                                                                            @          A          V   5    b �     �   >   @   �    �   =   @   �      9      config = function() require'nvim-tree'.setup {} end5��    =   4                 =                     �    >                     >                    �    >                      >                     �    >                     >                    �    >                     ?                     �    >                      >                     5�_�      
           	   B        ����                                                                                                                                                                                                                                                                                                                            B          �          V       b �     �   A   B       A     disable_netrw       = true,     hijack_netrw        = true,     open_on_setup       = false,     ignore_ft_on_setup  = {},     auto_close          = false,     open_on_tab         = false,     hijack_cursor       = false,     update_cwd          = false,     update_to_buf_dir   = {       enable = true,       auto_open = true,     },     diagnostics = {       enable = false,       icons = {         hint = "",         info = "",         warning = "",         error = "",       }     },     update_focused_file = {       enable      = false,       update_cwd  = false,       ignore_list = {}     },     system_open = {       cmd  = nil,       args = {}     },     filters = {       dotfiles = false,       custom = {}     },   	  git = {       enable = true,       ignore = true,       timeout = 500,     },   
  view = {       width = 30,       height = 30,       hide_root_folder = false,       side = 'left',       auto_resize = false,       mappings = {         custom_only = false,         list = {}       },       number = false,       relativenumber = false,       signcolumn = "yes"     },     trash = {       cmd = "trash",       require_confirm = true     },     actions = {       change_dir = {         global = false,       },       open_file = {         quit_on_open = true,       }     }5��    A       A               d      �              5�_�   	              
   >        ����                                                                                                                                                                                                                                                                                                                            B          B          V       b �     �   >   �   x    �   >   ?   x    5��    >               A       >              �      5�_�   
                 ?        ����                                                                                                                                                                                                                                                                                                                            ?                    V       b �"     �   >   �   �   A     disable_netrw       = true,     hijack_netrw        = true,     open_on_setup       = false,     ignore_ft_on_setup  = {},     auto_close          = false,     open_on_tab         = false,     hijack_cursor       = false,     update_cwd          = false,     update_to_buf_dir   = {       enable = true,       auto_open = true,     },     diagnostics = {       enable = false,       icons = {         hint = "",         info = "",         warning = "",         error = "",       }     },     update_focused_file = {       enable      = false,       update_cwd  = false,       ignore_list = {}     },     system_open = {       cmd  = nil,       args = {}     },     filters = {       dotfiles = false,       custom = {}     },   	  git = {       enable = true,       ignore = true,       timeout = 500,     },   
  view = {       width = 30,       height = 30,       hide_root_folder = false,       side = 'left',       auto_resize = false,       mappings = {         custom_only = false,         list = {}       },       number = false,       relativenumber = false,       signcolumn = "yes"     },     trash = {       cmd = "trash",       require_confirm = true     },     actions = {       change_dir = {         global = false,       },       open_file = {         quit_on_open = true,       }     }5��    >                     >                    �    ?                     ^                    �    @                     ~                    �    A                     �                    �    B                     �                    �    C                     �                    �    D                     �                    �    E                                          �    F                     A                    �    G                     ]                    �    H                     r                    �    I                     �                    �    J                     �                    �    K                     �                    �    L                     �                    �    M                     �                    �    N                     �                    �    O                     �                    �    P                     	                    �    Q                     '	                    �    R                     /	                    �    S                     6	                    �    T                     R	                    �    U                     m	                    �    V                     �	                    �    W                     �	                    �    X                     �	                    �    Y                     �	                    �    Z                     �	                    �    [                     �	                    �    \                     �	                    �    ]                     �	                    �    ^                     
                    �    _                     
                    �    `                     $
                    �    a                     0
                    �    b                     E
                    �    c                     Z
                    �    d                     o
                    �    e                     v
                    �    f                     �
                    �    g                     �
                    �    h                     �
                    �    i                     �
                    �    j                     �
                    �    k                     �
                    �    l                                         �    m                     (                    �    n                     :                    �    o                     C                    �    p                     Y                    �    q                     w                    �    r                     �                    �    s                     �                    �    t                     �                    �    u                     �                    �    v                     �                    �    w                     �                    �    x                     �                    �    y                                         �    z                                         �    {                     $                    �    |                     8                    �    }                     U                    �    ~                     ]                    5�_�                    ?        ����                                                                                                                                                                                                                                                                                                                            ?                    V       b �#     �   >   �   �   A       disable_netrw       = true,       hijack_netrw        = true,        open_on_setup       = false,       ignore_ft_on_setup  = {},        auto_close          = false,        open_on_tab         = false,        hijack_cursor       = false,        update_cwd          = false,       update_to_buf_dir   = {         enable = true,         auto_open = true,       },       diagnostics = {         enable = false,         icons = {           hint = "",           info = "",           warning = "",           error = "",         }       },       update_focused_file = {         enable      = false,         update_cwd  = false,         ignore_list = {}       },       system_open = {         cmd  = nil,         args = {}       },       filters = {         dotfiles = false,         custom = {}       },       git = {         enable = true,         ignore = true,         timeout = 500,       },       view = {         width = 30,         height = 30,         hide_root_folder = false,         side = 'left',         auto_resize = false,         mappings = {           custom_only = false,           list = {}         },         number = false,         relativenumber = false,         signcolumn = "yes"       },       trash = {         cmd = "trash",         require_confirm = true       },       actions = {         change_dir = {           global = false,         },         open_file = {           quit_on_open = true,         }       }5��    >                     >                    �    ?                     `                    �    @                     �                    �    A                     �                    �    B                     �                    �    C                     �                    �    D                                         �    E                     .                    �    F                     Q                    �    G                     o                    �    H                     �                    �    I                     �                    �    J                     �                    �    K                     �                    �    L                     �                    �    M                  
   �             
       �    N                  
   	             
       �    O                  
   	             
       �    P                  
   4	             
       �    Q                     M	                    �    R                     W	                    �    S                     `	                    �    T                     ~	                    �    U                     �	                    �    V                     �	                    �    W                     �	                    �    X                     �	                    �    Y                     �	                    �    Z                     
                    �    [                     
                    �    \                     
                    �    ]                     1
                    �    ^                     K
                    �    _                     _
                    �    `                     h
                    �    a                     v
                    �    b                     �
                    �    c                     �
                    �    d                     �
                    �    e                     �
                    �    f                     �
                    �    g                     �
                    �    h                     �
                    �    i                                         �    j                     5                    �    k                     R                    �    l                  
   g             
       �    m                  
   �             
       �    n                     �                    �    o                     �                    �    p                     �                    �    q                     �                    �    r                     �                    �    s                                         �    t                                         �    u                     (                    �    v                     G                    �    w                     P                    �    x                     b                    �    y                  
   y             
       �    z                     �                    �    {                     �                    �    |                  
   �             
       �    }                     �                    �    ~                     �                    5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            ?                    V       b �&     �      �           5��                          �                     5�_�                    �        ����                                                                                                                                                                                                                                                                                                                            �          �          V       b �(    �   �   �          require'nvim-tree'.setup {   }5��    �                      �                     5�_�                    >        ����                                                                                                                                                                                                                                                                                                                            >   3       �   	       V   8    b ��     �   =   >       C   4      config = function() require'nvim-tree'.setup {   !      disable_netrw       = true,   !      hijack_netrw        = true,   "      open_on_setup       = false,         ignore_ft_on_setup  = {},   "      auto_close          = false,   "      open_on_tab         = false,   "      hijack_cursor       = false,   "      update_cwd          = false,         update_to_buf_dir   = {           enable = true,           auto_open = true,         },         diagnostics = {           enable = false,           icons = {             hint = "",             info = "",             warning = "",             error = "",   	        }         },         update_focused_file = {           enable      = false,           update_cwd  = false,           ignore_list = {}         },         system_open = {           cmd  = nil,           args = {}         },         filters = {           dotfiles = false,           custom = {}         },         git = {           enable = true,           ignore = true,           timeout = 500,         },         view = {           width = 30,           height = 30,   !        hide_root_folder = false,           side = 'left',           auto_resize = false,           mappings = {             custom_only = false,             list = {}   
        },           number = false,           relativenumber = false,           signcolumn = "yes"         },         trash = {           cmd = "trash",           require_confirm = true         },         actions = {           change_dir = {             global = false,   
        },           open_file = {             quit_on_open = true,   	        }         }   	    } end5��    =       C               	      �              5�_�                    =       ����                                                                                                                                                                                                                                                                                                                            >   3       >   	       V   8    b �    �   <   >   s            },5��    <                                          5�_�                    9        ����                                                                                                                                                                                                                                                                                                                            9          >          V       b �     �   8   9            use {   3      'kyazdani42/nvim-tree.lua', -- file expolorer         requires = {   B        'kyazdani42/nvim-web-devicons', -- optional, for file icon         }     }5��    8                      n      �               5�_�                    8   $    ����                                                                                                                                                                                                                                                                                                                            9          9          V       b �     �   7   9   m      $  use "kyazdani42/nvim-web-devicons"5��    7   $                  m                     5�_�                    8   A    ����                                                                                                                                                                                                                                                                                                                            9          9          V       b �"    �   7   9   m      A  use "kyazdani42/nvim-web-devicons" -- add icons from Nerd fonts5��    7   A                  �                     5�_�                    /       ����                                                                                                                                                                                                                                                                                                                                                             b*�     �   /   1   n        �   /   1   m    5��    /                      2                     �    /                     4                     5�_�                    0       ����                                                                                                                                                                                                                                                                                                                                                             b*�     �   /   1   n        use 5��    /                     8                     5�_�                    0       ����                                                                                                                                                                                                                                                                                                                                                             b*�     �   /   1   n        use ""5��    /                     9                     5�_�                    0       ����                                                                                                                                                                                                                                                                                                                                                             b*�    �   /   1   n        use "fern.vim"5��    /                     9                     �    /   
              	   <             	       5�_�                    F       ����                                                                                                                                                                                                                                                                                                                                                             b*�    �   E   F            use "folke/which-key.nvim"5��    E                      W	                     5�_�                    8       ����                                                                                                                                                                                                                                                                                                                                                             b-T   	 �   7   9   m      5  use "numToStr/Comment.nvim" -- Easily comment stuff5��    7                    7                    �    7                    7                    5�_�                    R       ����                                                                                                                                                                                                                                                                                                                                                             b0�   
 �   Q   S   m      )  use "L3MON4D3/LuaSnip" --snippet engine5��    Q                     *                     5�_�                    .        ����                                                                                                                                                                                                                                                                                                                                                             b	?     �   .   0   n        �   .   0   m    5��    .                      %                     �    .                      %                     �    .                    1                    �    .                    :                    5�_�                    /   $    ����                                                                                                                                                                                                                                                                                                                                                             b	?     �   /   4   n    �   /   0   n    5��    /                      K              g       5�_�                    0        ����                                                                                                                                                                                                                                                                                                                            0           2           V        b	?     �   /   3   r      "" Better Global Search and Replace   Plug 'jremmen/vim-ripgrep'   'Plug 'stefandtw/quickfix-reflector.vim'5��    /                      K                     �    0                      p                     �    1                      �                     5�_�                    1       ����                                                                                                                                                                                                                                                                                                                            0           2           V        b	?     �   0   2   r        Plug 'jremmen/vim-ripgrep'5��    0                    r                    5�_�                     2       ����                                                                                                                                                                                                                                                                                                                            0           2           V        b	?     �   1   3   r      )  Plug 'stefandtw/quickfix-reflector.vim'5��    1                    �                    5�_�      !               0       ����                                                                                                                                                                                                                                                                                                                            0           2           V        b	?     �   /   0          $  " Better Global Search and Replace5��    /                      K      %               5�_�       "           !   2        ����                                                                                                                                                                                                                                                                                                                            0           1           V        b	?I     �   2   6   q    �   2   3   q    5��    2                      �              V       5�_�   !   #           "   3       ����                                                                                                                                                                                                                                                                                                                            0           1           V        b	?Z     �   2   3          4Plug 'kyazdani42/nvim-web-devicons' " for file icons5��    2                      �      5               5�_�   "   $           #   3        ����                                                                                                                                                                                                                                                                                                                            0           1           V        b	?d     �   2   4   s      Plug 'kyazdani42/nvim-tree.lua'5��    2                     �                    5�_�   #   %           $   3        ����                                                                                                                                                                                                                                                                                                                            3          3          V       b	?f     �   2   4   s      use 'kyazdani42/nvim-tree.lua'5��    2                      �                     5�_�   $   '           %   2        ����                                                                                                                                                                                                                                                                                                                            3          3          V       b	?g    �   2   4   t        �   2   4   s    5��    2                      �                     �    2                      �                     5�_�   %   (   &       '   5        ����                                                                                                                                                                                                                                                                                                                            4          4          V       b	@�     �   4   <   t       �   5   6   t    5��    4                     �              �       5�_�   '   )           (   5        ����                                                                                                                                                                                                                                                                                                                            5           ;           V        b	@�     �   4   <   z      use {       'kyazdani42/nvim-tree.lua',       requires = {   @      'kyazdani42/nvim-web-devicons', -- optional, for file icon       },   7    config = function() require'nvim-tree'.setup {} end   }5��    4                      �                     �    5                     �                    �    6                     �                    �    7                                         �    8                     E                    �    9                     N                    �    :                      �                     5�_�   (               )   4        ����                                                                                                                                                                                                                                                                                                                            5           ;           V        b	@�    �   3   4             use 'kyazdani42/nvim-tree.lua'5��    3                      �      !               5�_�   %           '   &   4       ����                                                                                                                                                                                                                                                                                                                            4          4          V       b	@�     �   4   5   t    �   3   5   t        use 'kyazdani42/nvimuse {       'kyazdani42/nvim-tree.lua',       requires = {   @      'kyazdani42/nvim-web-devicons', -- optional, for file icon       },   7    config = function() require'nvim-tree'.setup {} end   }-tree.lua'5��    3                    �              �       5�_�                     9   
    ����                                                                                                                                                                                                                                                                                                                                                             b ��     �   9   :   n    �   8   :   n        use "kyazuse {       'kyazdani42/nvim-tree.lua',       requires = {   @      'kyazdani42/nvim-web-devicons', -- optional, for file icon       },   7    config = function() require'nvim-tree'.setup {} end   '}dani42/nvim-tree.lua" -- file explorer5��    8                    y              �       5��