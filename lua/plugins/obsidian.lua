return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	ft = "markdown",
	-- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
	-- event = {
	--   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
	--   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
	--   -- refer to `:h file-pattern` for more examples
	--   "BufReadPre path/to/my-vault/*.md",
	--   "BufNewFile path/to/my-vault/*.md",
	-- },
	---@module 'obsidian'
	---@type obsidian.config
	opts = {
		workspaces = {
			{
				name = "personal",
				path = "~/personal",
			},
		},

		legacy_commands = false,
		checkbox = {
			order = { " ", "x" },
		},
		notes_subdir = "notes",
		new_notes_location = "notes_subdir",
		notes = {
			folder = "notes",
			template = "notes_template.md",
		},
		templates = {
			folder = "templates",
			date_format = "%Y-%m-%d",
		},
		note_id_func = function(title)
			-- If you provide a title, use it as the filename
			return title and title:gsub("%s+", " ") or tostring(os.time())
		end,
		frontmatter = {
			enabled = true,
			func = function(note)
				return {
					title = note.title,
					created = os.date("%Y-%m-%d"),
				}
			end,
		},
	},
}
