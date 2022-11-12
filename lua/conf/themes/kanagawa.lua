-- Default Options
require("kanagawa").setup({
	undercurl = true,
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { italic = true },
	typeStyle = {},
	variablebuiltinStyle = { italic = true },
	specialReturn = true,
	transparent = true,
	dimInactive = false,
	globalStatus = false,
	terminalColors = true,
	colors = {},
	overrides = {},
	theme = "default",
})

-- Setup must be called before loading
vim.cmd("colorscheme kanagawa")
