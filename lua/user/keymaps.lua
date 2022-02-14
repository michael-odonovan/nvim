-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   _mode = "c",

-- Keys
--   C = ctrl, A = alt, S = shift

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap


-- Leader Key ============================================
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Normal Mode ============================================
-- Open File Explorer
keymap("n", "<leader>e", ":call ToggleNetrw()<CR>", opts)
keymap("n", "<leader>E", ":NvimTreeToggle<CR>", opts)

-- Splits
keymap("n", "<leader>d", ":vsp<CR>", opts)

-- Tabs
keymap("n", "<leader>t", ":tabnew<CR>", opts)
keymap("n", "<leader>l", ":tabn<CR>", opts)
keymap("n", "<leader>h", ":tabp<CR>", opts)

-- Terminals
keymap("n", "<leader>b", ":new|:term<CR>", opts)

-- Saving/Exiting
keymap("n", "<leader>w", ":wa<CR>", opts)
keymap("n", "<C-d>", ":q!<CR>", opts)
keymap("n", "<esc>", ":silent! nohls<CR>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<leader>=", ":vertical resize +5<CR>", opts)
keymap("n", "<leader>-", ":vertical resize -5<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Up>", ":resize -2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==gi", opts)

-- visual line movement
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)

keymap("n", "<C-t>", ":Telescope find_files<CR>", opts)
keymap("n", "<C-g>", ":Telescope live_grep<CR>", opts)
keymap("n", "<C-i>", ":Telescope lsp_references<CR>", opts)


-- Visual Mode ==============================
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)

-- When you paste over text, keep the original text to paste
keymap("v", "p", '"_dP', opts)


-- Visual Block Mode ================================
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)


-- Terminal Mode ==================================
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

