vim.cmd([[

" Folders
command! Project cd ~/RbcMobilityNextJs | :Ex
command! Init cd ~/.config/nvim | :e init.lua
command! Wiki cd ~/Wiki | :e index.md
command! Cn cd ~/CodingNotes | :Ex
command! Snippets cd ~/.config/nvim/snippets-luasnip-vscode | :Ex
command! Blog cd ~/Blog | :Ex
:command! Notes cd ~/Documents/notes-general | :Ex
:command! Documents cd ~/Documents | :Ex
:command! Scripts cd ~/bin | :Ex
:command! Js cd ~/Javascript | :Ex
:command! Desk cd ~/desktop | :Ex
:command! Docs cd ~/documents | :Ex
:command! Downloads cd ~/Downloads | :Ex

" Files
:command! Scratch :e ~/scratch.md
:command! Bashrc :e ~/.bashrc
:command! Source :source ~/.config/nvim/init.lua

]])
