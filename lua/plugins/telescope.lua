return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local action_state = require("telescope.actions.state")

			telescope.setup({
				defaults = {
					mappings = {
						i = {
							["<C-d>"] = actions.delete_buffer,
						},
						n = {
							["<C-d>"] = actions.delete_buffer,
						},
					},
				},
			})

			-- Template picker function
			local function pick_template_and_insert()
				require("telescope.builtin").find_files({
					prompt_title = "Select Template",
					cwd = "~/.config/nvim/skeletons",
					attach_mappings = function(prompt_bufnr, map)
						actions.select_default:replace(function()
							local selection = action_state.get_selected_entry()
							actions.close(prompt_bufnr)
							vim.cmd("0r " .. vim.fn.fnameescape(selection.path))
						end)
						return true
					end,
				})
			end

			-- Create user command :NewFromTemplate
			vim.api.nvim_create_user_command("NewFromTemplate", pick_template_and_insert, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
