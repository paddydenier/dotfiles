return {
	{
		"folke/snacks.nvim",
		opts = {
			picker = {
				enabled = true,
				layout = {
					preset = "ivy_split",
				},
			},
		},
		config = function(_, opts)
			require("snacks").setup(opts)
			-- Keymap to open the files picker
			vim.keymap.set("n", "<leader>fp", function()
				require("snacks.picker").files({
					layout = {
						preset = "ivy_split",
					},
				})
			end, { desc = "Snacks: Find Files (ivy_split with preview on top)" })
		end,
	},
}
