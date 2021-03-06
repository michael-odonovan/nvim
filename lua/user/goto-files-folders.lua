vim.cmd([[

" Repos
command! Wiki cd ~/Repos/Wiki | :e index.md
command! Todo cd ~/Repos/Wiki | :e todo.md
command! Repos :e ~/Repos | :cd %:h
command! Dotfiles :e ~/Repos/Dotfiles | :cd %:h
command! GitPractise :e ~/Repos/GitPractise | :cd %:h
command! CV :e ~/Repos/CV | :cd %:h
command! GitPractise :e ~/Repos/GitPractise | :cd %:h
command! Writing :e ~/Repos/Writing | :cd %:h
command! Blog :e ~/Repos/Blog | :cd %:h

" Files
command! Init cd ~/.config/nvim | :e init.lua
command! Snippets :e ~/.config/nvim/snippets-luasnip-vscode/snippets/javascript-ecosystem/
command! Scratch cd ~/Repos/Wiki | :e scratch.md
command! Bashrc :e ~/.bashrc
command! Zsh :e ~/.zshrc
command! NewInstall :e ~/.bashrc-new-install
command! Source :source ~/.config/nvim/init.lua
command! Grid :e ~/Repos/Wiki/css-flex-grid-cheatsheet.md


" Areas
command! Learning :e ~/Repos/Learning | :cd %:h
command! Scripts :e ~/bin
command! Desk :e ~/Desktop
command! Downloads :e ~/Downloads
command! Documents :e ~/Documents

" Work
command! CR :e ~/CR 
command! CL :e ~/CR/component-library/
command! Cont :e ~/CR/comicrelief-contentful/

]])
