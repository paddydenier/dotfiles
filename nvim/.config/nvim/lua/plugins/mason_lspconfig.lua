return {
	-- auto set up installed lsp servers from mason
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
			"stylua",
			"texlab",
			"clangd",
			"rust_analyzer",
			"pyright",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
}
