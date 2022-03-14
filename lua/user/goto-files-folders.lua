vim.cmd([[

" Folders
command! Cn :e ~/CodingNotes | :cd %:h
command! Project :e ~/RbcMobilityNextJs
command! Init cd ~/.config/nvim | :e init.lua
command! Wiki cd ~/Wiki | :e index.md
command! Snippets :e ~/.config/nvim/snippets-luasnip-vscode
command! Blog :e ~/Blog
command! Notes :e ~/NotesGeneral
command! Documents :e ~/Documents
command! Scripts :e ~/bin
command! Desk :e ~/Desktop
command! Downloads :e ~/Downloads

" Files
command! Scratch :e ~/scratch.md
command! Bashrc :e ~/.bashrc
command! NewInstall :e ~/.bashrc-new-install
command! Source :source ~/.config/nvim/init.lua

]])
