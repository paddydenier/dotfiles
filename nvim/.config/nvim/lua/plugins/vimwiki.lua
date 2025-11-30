return {
	"vimwiki/vimwiki",
	init = function()
		vim.g.vimwiki_list = {
			{
				path = "~/wiki/notes_plain/",
				syntax = "markdown",
				ext = ".md",
				auto_diary_index = 1,
			},
		}
		vim.g.vimwiki_global_ext = 0
		vim.g.vimwiki_auto_header = 1
	end,
}
