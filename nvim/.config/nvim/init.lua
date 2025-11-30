require("config.lazy")
require("config.keymaps")
require("config.options")
vim.cmd.colorscheme("carbonfox")

-- inline diagnostics
--[[
vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
		spacing = 2,
		severity = { min = vim.diagnostic.severity.WARN },
	},
	signs = true,
	underline = true,
	update_in_insert = false,
})
]]
