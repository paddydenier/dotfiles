return {
	-- LSP repository and frontend
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	-- Ensure installed
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"texlab",
					"pyright",
					"clangd",
					"rust_analyzer",
				},
			})
		end,
	},
	-- Connect Nvim and LSP
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.pyright.setup({})
			lspconfig.rust_analyzer.setup({})
			-- Enable text, disable signs
			vim.diagnostic.config({
				--update_in_insert = true,
				virtual_text = true,
				signs = false,
			})
		end,
	},
}
