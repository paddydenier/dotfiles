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
					"pyright",
					"clangd",
					"rust_analyzer",
					"texlab",
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

			lspconfig.texlab.setup({
				settings = {
					texlab = {
						chktex = {
							onEdit = true,
							onOpenAndSave = true,
						},
						build = {
							executable = "latexmk",
							args = { "-pdf", "-interaction=nonstopmode", "-synctex=1", "%f" },
							onSave = true,
							forwardSearchAfter = false,
						},
					},
				},
				on_attach = function(client, bufnr)
					-- Disable only formatting capability, keep rest intact
					client.server_capabilities.documentFormattingProvider = false
					client.server_capabilities.documentRangeFormattingProvider = false

					-- You can add your keymaps here if you want
				end,
			})
			-- Enable text, disable signs
			vim.diagnostic.config({
				--update_in_insert = true,
				virtual_text = true,
				signs = false,
			})
		end,
	},
}
