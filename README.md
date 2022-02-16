## Converting to Lua, about 90% there, : )

## Usage Notes:
### Global Search and Replace with Telescope and quickfix-reflector plugin
- <C-g> = Telescope live_grep
- <C-q> sends everything to quickfix window, default mapping
- :s/search/replace/g
- :w 

### Autocomplete / Snippets
- <C-i> = make suggestions disappear
- <C-j,k> = scroll suggestions
- <CR> = accept suggestion
- <C-u> = go to next position in the chosen Snippet
- I have turned off nvim_lsp suggestions to make it a bit quieter/saner.
- Suggestions are currently: buffer, luasnip, path

### Emmet
- <Tab>
have commented this out for now, as using html snippets 


- check nvim health
  ```
  :checkhealth
  ```

- Fix copy and paste? On Ubuntu
  ```
  sudo apt install xsel
  ```

- Neovim python support
  ```
  pip install pynvim
  ```

- Neovim node support
  ```
  npm i -g neovim
  ```

