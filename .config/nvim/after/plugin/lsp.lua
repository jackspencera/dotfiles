local lsp = require("lsp-zero")

lsp.preset('recommended')

-- Failed attempt to fix vim undefined lua error
--lsp.configure('lua', {
--	settings = {
--		Lua = {
--			diagnostics = {
--				globals = { 'vim' },
--			},
--		},
--	},
--})

lsp.setup()

-- Set the diagnostic settings after the lsp has been setup
vim.diagnostic.open_float({
	scope = "buffer",

})

vim.diagnostic.config({
	virtual_text = true,
	float = true,
})

