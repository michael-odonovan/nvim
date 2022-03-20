local status_ok, nightfox = pcall(require, "nightfox")
if not status_ok then
	return
end

nightfox.setup({
	options = {
		styles = {
			comments = "italic", -- change style of comments to be italic
		},
	},
	pallets = {
		bg = "#111111",
		bg_highlight = "#333333",
	},
	groups = {
		Folded = { fg = "c.blue", bg = "c.bg" }, -- color of highlight used for closed folds

		-- Note: Markdown headings are now controlled by vimwiki settings!
	},
})

vim.cmd("colorscheme nightfox")

local pallet = require("nightfox.pallet").load("nightfox")

print(vim.inspect(pallet.red))
