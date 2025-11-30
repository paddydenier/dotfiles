return {
	"obsidian-nvim/obsidian.nvim",
	version = "*", -- recommended, use latest release instead of latest commit
	-- ft = "markdown",
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
			template = "notes_template.md", -- TODO: make default template
		},
		templates = {
			folder = "templates",
			date_format = "%Y-%m-%d",
		},
		note_id_func = function(title) -- TODO: is this really necessary?
			-- sanitize the title for filename (remove spaces and special chars)
			local sanitized_title = title:gsub("%s+", "_"):gsub("[^%w_-]", "")
			-- ISO 8601 style: YYYY-MM-DD_title
			return os.date("%Y-%m-%d") .. "_" .. sanitized_title
		end,

		-- TODO: remove frontmatter created property
		-- 	frontmatter = {
		-- 		enabled = true,
		-- 		func = function(note)
		-- 			return {
		-- 				title = note.title,
		-- 				created = os.date("%Y-%m-%d"),
		-- 			}
		-- 		end,
		-- 	},
		frontmatter = {
			enabled = true,
			func = function(note)
				return {
					id = os.date("%Y-%m-%d_%H-%M-%S"),
					aliases = { note.title }, -- keep aliases
					tags = {}, -- keep tags
					-- omit 'created' completely
				}
			end,
		},
	},
}
