return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")
		local formatting = null_ls.builtins.formatting

		-- Define tex-fmt manually since not built-in
		local tex_fmt = formatting.stylua.with({
			name = "tex-fmt",
			command = "tex-fmt",
			args = { "--stdin" },
			filetypes = { "tex", "plaintex" },
		})

		null_ls.setup({
			sources = {
				formatting.stylua,
				-- python
				formatting.black,
				formatting.isort,
				formatting.clang_format,
				tex_fmt,
			},
		})

		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, {})
	end,
}
