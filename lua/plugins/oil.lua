return {
	{
		"stevearc/oil.nvim",
		---@module 'oil'
		---@type oil.SetupOpts
		opts = {
			-- show hidden files and directories
			view_options = {
				show_hidden = true,
			},
			win_options = {
				-- signcolumn = "yes:2",
			},
		},
		-- Optional dependencies
		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		-- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
		-- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
		lazy = false,
	},
	--[[
	{
		"refractalize/oil-git-status.nvim",
		config = function()
			require('oil-git-status').setup({
				show_ignored = true, -- show files that match gitignore with !!
				symbols = { -- customize the symbols that appear in the git status columns
					index = {
						["!"] = "!",
						["?"] = "?",
						["A"] = "A",
						["C"] = "C",
						["D"] = "D",
						["M"] = "M",
						["R"] = "R",
						["T"] = "T",
						["U"] = "U",
						[" "] = " ",
					},
					working_tree = {
						["!"] = "!",
						["?"] = "?",
						["A"] = "A",
						["C"] = "C",
						["D"] = "D",
						["M"] = "M",
						["R"] = "R",
						["T"] = "T",
						["U"] = "U",
						[" "] = " ",
					},
				},
			})
		end
	},
	--]]
}
