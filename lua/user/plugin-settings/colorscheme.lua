local nightfox = require('nightfox')

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
    markdownH1 = { fg = "${orange}", style = "bold" },
    markdownH2 = { fg = "${blue}", style = "bold" },
    htmlH3 = { fg = "${magenta}", style = "bold" },
    htmlH4 = { fg = "${green}", style = "bold" },
    htmlH5 = { fg = "${red}", style = "bold" },
  }
})

nightfox.load()
