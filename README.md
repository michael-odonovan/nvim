## Converting to Lua, about 90% there, : )

## Usage Notes:
### Global Search and Replace with Telescope and quickfix-reflector plugin
- <C-g> = Telescope live_grep
- <C-q> sends everything to quickfix window, default mapping
- :s/search/replace/g
- :w 

### Autocomplete / Snippets
- <CR> = accept suggestion
- <C-j,k> = scroll suggestions
- <C-u> = go to next position in Snippet
- <C-i> = ignore suggestions
I have turned off lsp suggestions to make it a bit quieter/saner.
Suggestions are currently:
- buffer
- snippets


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

