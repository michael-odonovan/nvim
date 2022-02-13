local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)

  -- colorscheme
  use "EdenEast/nightfox.nvim"

  -- better global search and replace
  use 'jremmen/vim-ripgrep'
  use 'stefandtw/quickfix-reflector.vim'

  -- file explorer
  use 'kyazdani42/nvim-tree.lua'

  -- general
  use "lambdalisue/fern.vim"
  use "goolord/alpha-nvim" -- lua version of vim startify
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use 'norcalli/nvim-colorizer.lua' -- css color previews
  use "vim-scripts/loremipsum" -- :Loremipsum [wordcount]
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used by lots of plugins
  use "tpope/vim-commentary" -- Easily comment stuff
  use "kyazdani42/nvim-web-devicons" -- add icons from Nerd fonts to nvim
  use "moll/vim-bbye" -- about deleting buffers ???
  use "tpope/vim-surround" -- surround text with tags etc.
  use "tpope/vim-repeat" -- makes it able to to repeat vim-surround functions
  use "AndrewRadev/tagalong.vim" -- change html tag names
  use 'davidgranstrom/nvim-markdown-preview' -- :MardownPreview
-- node dependencies: live-server, pandoc
-- code syntax highlighting inside markdown is built into vim, there are settings in ____ for this.
  use "nvim-lualine/lualine.nvim"
  use "akinsho/toggleterm.nvim"
  use "lukas-reineke/indent-blankline.nvim"
  use "antoinemadec/FixCursorHold.nvim" -- This is needed to fix lsp doc highlight
  use "mattn/emmet-vim" -- <TAB>
  use "ahmedkhalf/project.nvim" -- for project management
  use "lewis6991/impatient.nvim" -- helps load nvim lua files quicker

  -- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip" -- snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
  use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters

  -- Telescope
  use "nvim-telescope/telescope.nvim"

  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
