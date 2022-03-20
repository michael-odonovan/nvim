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
		nightfox = {
			bg1 = "#111111",
			bg3 = "#333333",
		},
	},
	groups = {
		Folded = { fg = "c.blue", bg = "c.bg1" }, -- color of highlight used for closed folds

		-- Note: Markdown headings are now controlled by vimwiki settings!
	},
})

vim.cmd("colorscheme nightfox")
