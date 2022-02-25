-- Setup nvim-cmp.
local status_ok, nightfox = pcall(require, "nightfox")
if not status_ok then
  return
end

nightfox.setup({
  styles = {
    comments = "italic", -- change style of comments to be italic
  },
  colors = {
    bg = "#111111",
		bg_highlight = "#333333"
  },
  hlgroups = {
    Folded = { fg = "c.blue", bg = "c.bg" }, -- line used for closed folds

    -- Note: Markdown headings are now controlled by vimwiki settings!

  }
})

nightfox.load()
