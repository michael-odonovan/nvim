vim.cmd([[

let g:wiki_root = '~/Wiki'
let g:wiki_filetypes = ['md']
let g:wiki_link_extension = '.md'
let g:wiki_list = [{'path': '~/Wiki',
  \ 'path_html': '~/Wiki/html',
  \ 'syntax': 'markdown',
  \ 'ext': '.md',
  \ 'custom_wiki2html': '~/bin/wiki2html.sh'}]

nmap <leader>99 <plug>(wiki-index)

]])
