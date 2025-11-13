return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope-ui-select.nvim" },
		config = function()
			local telescope = require("telescope")
			local actions = require("telescope.actions")
			local action_state = require("telescope.actions.state")
			local themes = require("telescope.themes")

			-- Setup telescope once, including ui-select extension
			telescope.setup({
				defaults = themes.get_ivy({
					previewer = true,
					sorting_strategy = "ascending",
					mappings = {
						i = { ["<C-d>"] = actions.delete_buffer },
						n = { ["<C-d>"] = actions.delete_buffer },
					},
				}),
				extensions = {
					["ui-select"] = themes.get_dropdown({}),
				},
			})

			-- Load extensions
			telescope.load_extension("ui-select")

			-- Template picker function
			local function pick_template_and_insert()
				require("telescope.builtin").find_files({
					prompt_title = "Select Template",
					cwd = "~/.config/nvim/skeletons",
					attach_mappings = function(prompt_bufnr)
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
}
