local tabwidth = 2
-- options
local o = vim.o
-- window options
local wo = vim.wo
-- buffer options
local bo = vim.bo


vim.cmd([[ set undodir=~/.config/nvim/undo-directory ]])
o.autochdir = true
o.fileencoding = "utf-8"                  -- the encoding written to a file
o.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
o.mouse = "a"                             -- allow the mouse to be used in neovi
o.backup = false                          -- creates a backup file
o.cmdheight = 2                           -- adjusts the height command line for displaying messages
o.completeopt = 'menuone,noselect'       -- mostly just for cmp autocomplete
o.hlsearch = true                         -- highlight all matches on previous search pattern
o.ignorecase = true                       -- ignore case in search patterns
o.smartcase = true                        -- smart case
o.pumheight = 10                          -- pop up menu height
o.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
o.showtabline = 2                         -- always show tabs
o.smartindent = true                      -- make indenting smarter again
o.splitbelow = true                       -- force all horizontal splits to go below current window
o.splitright = true                       -- force all vertical splits to go to the right of current window
o.swapfile = false                        -- creates a swapfile
o.termguicolors = true                    -- set term gui colors (most terminals support this)
o.undofile = true                         -- enable persistent undo
o.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
o.expandtab = true                        -- convert tabs to spaces
o.shiftwidth = tabwidth                   -- the number of spaces inserted for each indentation, using tabwidth variable at top of this file
o.tabstop = tabwidth                      -- insert 2 spaces for a tab, using tabwidth variable
o.cursorline = true                       -- highlight the current line
o.number = true                           -- set numbered lines
o.relativenumber = false                  -- set relative numbered lines
o.numberwidth = 4                         -- set number column width to 2 {default 4}
o.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
o.wrap = true                             -- display lines as one long line
o.scrolloff = 8                           -- is one of my fav
o.sidescrolloff = 8
o.foldmethod = "marker"
o.formatoptions = o.formatoptions .. 'tcrqnj'
HOME = os.getenv("HOME")
o.backupdir = HOME .. "/.vim/backup"

-- Turn off double sided printing
-- duplex is double sided
o.printoptions = "paper:A4,duplex:off,number:y,portrait:y,left:0pc"
o.printfont = "Courier:h10"

-- markdown code block highlighting
vim.g.markdown_fenced_languages = { 'html', 'xml', 'python', 'bash=sh', 'css', 'sass', 'javascript', 'js=javascript', 'json=javascript', 'jsx=javascript.jsx', 'typescript', 'tsx=typescript.tsx' }

-- this is setting a window option
wo.cursorline = true

-- other way to do options:
vim.cmd "set whichwrap+=<,>,[,],h,l"      -- make cursor wrap onto new line
vim.cmd("set cursorline")




