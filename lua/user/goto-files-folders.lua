vim.cmd([[

" Latest project
:command! Project :e ~/RbcMobilityNextJs

" open init.lua
:command! Init :e ~/.config/nvim/init.lua

" open Snippets folder
:command! Snippets :e ~/.config/nvim/snippets-luasnip-vscode

function! Wiki()
  cd ~/Wiki 
  :e index.md
endfunction
command! Wiki :call Wiki()

function! Cn()
  cd ~/CodingNotes
  :Ex
endfunction
command! Cn :call Cn()

command! Wiki :call Wiki()
:command! Coding :e ~/Wiki/Coding-Notes.md
:command! Blog :e ~/Blog
:command! Learning :e ~/Learning
:command! Scratch :e ~/CodingNotes/scratch.md
:command! Bashrc :e ~/.bashrc
:command! Source :source ~/.config/nvim/init.lua
:command! Cf :e ~/Coding
:command! Notes :e ~/Documents/notes-general
:command! Documents :e ~/Documents
:command! Scripts :e ~/bin
:command! Js :e ~/Javascript
:command! Desk :e ~/desktop
:command! Docs :e ~/documents
:command! Downloads :e ~/Downloads

]])
