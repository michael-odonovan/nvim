vim.cmd([[

" Folders
command! Project cd ~/RbcMobilityNextJs | :Ex
command! Init cd ~/.config/nvim | :e init.lua
command! Wiki cd ~/Wiki | :e index.md
command! Cn cd ~/CodingNotes | :Ex
command! Snippets cd ~/.config/nvim/snippets-luasnip-vscode | :Ex
command! Blog cd ~/Blog | :Ex
command! Notes cd ~/NotesGeneral | :Ex
command! Documents cd ~/Documents | :Ex
command! Scripts cd ~/bin | :Ex
command! Desk cd ~/Desktop | :Ex
command! Downloads cd ~/Downloads | :Ex

" Files
command! Scratch :e ~/scratch.md
command! Bashrc :e ~/.bashrc
command! NewInstall :e ~/.bashrc-new-install
command! Source :source ~/.config/nvim/init.lua

]])
