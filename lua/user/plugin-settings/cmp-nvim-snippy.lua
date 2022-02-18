local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

-- LuaSnip require variable --
-- local snip_status_ok, luasnip = pcall(require, "luasnip")
-- if not snip_status_ok then
--   return
-- end
-- require("luasnip.loaders.from_vscode").load({paths={'~/.config/nvim/vs-snippets-luasnip'}})

-- snippy require variable
local snip_status_ok, snippy = pcall(require, "snippy")
if not snip_status_ok then
  return
end


local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

--   פּ ﯟ   some other good icons
local kind_icons = {
  Text = "",
  Method = "m",
  Function = "",
  Constructor = "",
  Field = "",
  Variable = "",
  Class = "",
  Interface = "",
  Module = "",
  Property = "",
  Unit = "",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  Color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "",
  Event = "",
  Operator = "",
  TypeParameter = "",
}
-- find more here: https://www.nerdfonts.com/cheat-sheet

cmp.setup {
  snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      snippy.expand_snippet(args.body) -- For `snippy`
      -- luasnip.lsp_expand(args.body) -- For `luasnip`
      -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip`
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips`
    end,
  },
  mapping = {
    ["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
    ["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
    ["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
    ["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
    ["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
    ["<C-i>"] = cmp.mapping {
      i = cmp.mapping.abort(),
      c = cmp.mapping.close(),
    },

    -- Accept currently selected item. If none selected, `select` first item.
    -- Set `select` to `false` to only confirm explicitly selected items.
    ["<CR>"] = cmp.mapping.confirm { select = true },
    ["<C-u>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif snippy.can_expand_or_advance() then
        snippy.expand_or_advance()
      elseif snippy.can_jump() then
        snippy.next()
      -- elseif luasnip.expandable() then
      --   luasnip.expand()
      -- elseif luasnip.expand_or_jumpable() then
      --   luasnip.expand_or_jump()
      elseif check_backspace() then
        fallback()
      else
        fallback()
      end
    end, { "i", "s", }),

    ["<S-u>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif snippy.can_jump(-1) then
        snippy.previous(-1)
      -- elseif luasnip.jumpable(-1) then
      --   luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s", }),
  },

  formatting = {
    fields = { "kind", "abbr", "menu" },

    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
      -- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
      vim_item.menu = ({
        buffer = "[Buffer]",
        snippy = "[Snippet",
        -- luasnip = "[Snippet]",
        path = "[Path]",
        -- nvim_lsp = "[LSP]",
      })[entry.source.name]
      return vim_item
    end,
  },
  sources = {
    { name = "buffer" },
    { name = "snippy" },
    -- { name = "luasnip" },
    { name = "path" },
    -- { name = "nvim_lsp" },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  documentation = {
    border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
  },
  experimental = {
    ghost_text = false,
    native_menu = false,
  },
}
