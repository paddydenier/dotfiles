return {
	"vimwiki/vimwiki",
	init = function()
		vim.g.vimwiki_list = {
			{
				path = "~/wiki",
				syntax = "markdown",
				ext = "md",
			},
		}
		vim.g.vimwiki_global_ext = 0
		vim.g.vimwiki_auto_header = 1
	end,
}
