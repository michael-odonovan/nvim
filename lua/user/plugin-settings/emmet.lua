vim.cmd([[

let g:user_emmet_install_global = 1

let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\  'typescript' : {
\      'extends' : 'tsx',
\  },
\}

" Emmet - mapping activation key
let g:user_emmet_expandabbr_key='<tab>'
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

]])
