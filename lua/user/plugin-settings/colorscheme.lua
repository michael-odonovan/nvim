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
    markdownH1 = { fg = "${blue}", style = "bold" },
    markdownH2 = { fg = "${green}", style = "bold" },
    htmlH3 = { fg = "${magenta}", style = "bold" },
    htmlH4 = { fg = "${yellow}", style = "bold" },
    htmlH5 = { fg = "${red}", style = "bold" },
  }
})

nightfox.load()
