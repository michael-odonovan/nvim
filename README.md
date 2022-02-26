# Converting to Lua, about 90% there, : )
## Usage Notes:

## check general health of nvim setup:
- :checkhealth

## Main Features
- native Lsp for coding errors
- formatter.nvim plugin for formatting with :Format and on save
- cmp/luasnip for completion and snippets
- see below for general setup for a new language

## Installing Language Servers
-- you need to install language servers binaries manually on your machine using npm or cargo (needs rust installed) for the formatting.
-- e.g. cargo install stylua
-- :LspInstallInfo to see installed language servers
-- press "i" on servers that I want
-- wait for it to install, quit out of window
-- Then in the file/filetype eg. mySite.css you need to :LspInstall and choose which language server for that file type.
-- gl = diagnostics
-- also to attach to language servers you need to have the node/neovim packkage installed (already in NewInstall scripts)
-- if you need to get more info about each language server and what binary to install, there is is infor in the lsp-config repo:
https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#cssls
-- so yeah quite a hoohah..

## Any issues with Packer?
- delete file: ~/.config/nvim/plugin/packer-compiled.lau
- delete folder: ~/.local/share/nvim/site/pack/packer/start/packer
- then reinstall.

## Global Search and Replace with Telescope and quickfix-reflector plugin
- <C-g> = Telescope live_grep
- <C-q> sends everything to quickfix window, default mapping
- :s/search/replace/g
- :w 

## Autocomplete / Snippets
- <C-i> = make suggestions disappear
- <C-j,k> = scroll suggestions
- <CR> = accept suggestion
- <C-u> = go to next position in the chosen Snippet
- I have turned off nvim_lsp suggestions to make it a bit quieter/saner.
- Suggestions are currently: buffer, luasnip, path

## Emmet
- <Tab>

