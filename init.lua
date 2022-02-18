-- gd = go to

-- lsp ==============================
require "user.lsp"

-- basics ============================
require "user.options"
require "user.keymaps"
require "user.autocommands"
require "user.netrw"
require "user.goto-files-folders"

-- call this after options ================================
require "user.aaa-old-config"

-- plugins to load ============================
require "user.plugins"

-- plugin settings =============================
-- snippets
require "user.plugin-settings.cmp"

-- other
require "user.plugin-settings.autopairs"
require "user.plugin-settings.colorscheme"
require "user.plugin-settings.emmet"
require "user.plugin-settings.gitsigns"
require "user.plugin-settings.goyo"
require "user.plugin-settings.impatient"
require "user.plugin-settings.indentline"
require "user.plugin-settings.lualine"
require "user.plugin-settings.project"
require "user.plugin-settings.telescope"
require "user.plugin-settings.toggleterm"
require "user.plugin-settings.treesitter"

