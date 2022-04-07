# Neovim Lua Setup

Minimal bling, just the essentials for front end development (React, Typescript, Styled-Components etc.)

## Main Features:

- diagnostics with native Lsp
- syntax highlighting with treesitter
- formatting with null-ls plugin
- snippets with cmp and luasnip, plus folder of custom snippets
- git integration with vim-fugitive and vim-flog plugins
- html completion with emmet plugin
- global search and replace with quickfix-reflector plugin
- global error collection with Trouble plugin

## Usage Notes:

### check general health of nvim setup:

- :checkhealth

### Diagnostics:

#### Installing language servers
- :LspInstallInfo to see installed language servers available for a particular filetype e.g. init.lua = sumneko_lua
- type `i` to install that server.
- wait for it to install, quit out of window.
- Install the chosen language server binary manually on your machine using npm or cargo etc e.g. cargo install stylua
- if you need to get more info about each language server and what binary to install, there is is information in the lsp-config repo:\
  https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#cssls
- so yeah, a bit of a hoohaah..
- 
#### Uninstalling language servers
- :LspUninstall <server>
- e.g. :LspUninstall eslint

- `gl` diagnostics

## Packer plugin manager

setup to auto installs itself and plugins. If there are any issues with it, try:

- delete file: ~/.config/nvim/plugin/packer-compiled.lau
- delete folder: ~/.local/share/nvim/site/pack/packer/start/packer
- then reinstall.

## Global Search and Replace with Telescope and quickfix-reflector plugin

- `<C-g>` = Telescope live_grep
- `<C-q>` sends everything to quickfix window, default mapping
- `:s/search/replace/g` search and replace changes
- `:w` write changes

## Autocomplete / Snippets

- `<C-j,k>` scroll suggestions
- `<CR>` accept suggestion
- `<C-u>` go to next position in the chosen Snippet
- `<C-i>` make suggestions disappear
- I have turned off nvim_lsp suggestions to make it a bit quieter/saner.
- Suggestions are currently: buffer, luasnip, path

## Emmet

- `<Tab>`
