local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer close and reopen Neovim...")
	vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "rounded" })
		end,
	},
})

-- Install your plugins here
return packer.startup(function(use)
	use("wbthomason/packer.nvim") -- Have packer manage itself

	-- colorschemes
	use("EdenEast/nightfox.nvim")
  use("folke/tokyonight.nvim")

	-- makes quickfix window writable for global search and replace
	use("stefandtw/quickfix-reflector.vim")

	-- Zen mode
	use("junegunn/goyo.vim")

	-- Git
	use("tpope/vim-fugitive") -- git vim wrapper
	use("tpope/vim-rhubarb") -- make GBrowse work
	use("rbong/vim-flog") -- git branch viewer for fugitive
	use({
		"lewis6991/gitsigns.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			require("gitsigns").setup()
		end,
	})
	-- improved text editing
	use("tpope/vim-commentary") -- Easily comment stuff
	use("tpope/vim-surround") -- surround text with tags etc.
	use("tpope/vim-repeat") -- makes it able to to repeat vim-surround functions
	use("AndrewRadev/tagalong.vim") -- change inside html tags
	use("windwp/nvim-autopairs") -- Autopairs, integrates with both cmp and treesitter
	use("mattn/emmet-vim") -- <TAB>

	-- general
	use("vimwiki/vimwiki") -- vimwiki
	use("kyazdani42/nvim-web-devicons") -- icons for folders etc
	use("tpope/vim-vinegar") -- improves netrw
	use("norcalli/nvim-colorizer.lua") -- css color previews
	use("vim-scripts/loremipsum") -- :Loremipsum [wordcount]
	use("nvim-lua/popup.nvim") -- An implementation of the Popup API from vim in Neovim
	use("nvim-lua/plenary.nvim") -- Useful lua functions used by lots of plugins
	use("davidgranstrom/nvim-markdown-preview") -- :MarkdownPreview
	-- node dependencies: live-server, pandoc
	-- code syntax highlighting inside markdown is built into vim, there are settings in vimwiki config for this.
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	-- collects errors in a file into a quickfix list:
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
	})
	use("akinsho/toggleterm.nvim")
	use("lukas-reineke/indent-blankline.nvim")
	use("antoinemadec/FixCursorHold.nvim") -- This is needed to fix lsp doc highlight
	use("lewis6991/impatient.nvim") -- helps load nvim lua files quicker

	-- cmp plugins
	use("hrsh7th/nvim-cmp") -- The completion plugin
	use("hrsh7th/cmp-buffer") -- buffer completions
	use("hrsh7th/cmp-path") -- path completions
	use("hrsh7th/cmp-cmdline") -- cmdline completions
	use("hrsh7th/cmp-nvim-lsp") -- lsp completions

	-- snippets
	-- LuaSnip
	use("saadparwaiz1/cmp_luasnip") -- integration with cmp completion engine
	use("L3MON4D3/LuaSnip") -- snippet engine

	-- LSP
	use("neovim/nvim-lspconfig") -- enable LSP
	use("williamboman/nvim-lsp-installer") -- setups the easy user installer with the pop up window
	use("tamago324/nlsp-settings.nvim") -- language server settings defined in json for
	use("jose-elias-alvarez/nvim-lsp-ts-utils") -- as above
	-- formatting:
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- Telescope
	use("nvim-telescope/telescope.nvim")

	-- Treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use("nvim-treesitter/playground")
	use("JoosepAlviste/nvim-ts-context-commentstring")

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
