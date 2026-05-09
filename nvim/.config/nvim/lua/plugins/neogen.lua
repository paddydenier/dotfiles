return {
	{
		"danymat/neogen",
		dependencies = {
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("neogen").setup({
				snippet_engine = "nvim",

				languages = {
					python = {
						template = {
							annotation_convention = "google_docstrings",
						},
					},
				},
			})
		end,
	},
}
