return {
	"lervag/vimtex",
	lazy = false, -- we don't want to lazy load VimTeX
	-- tag = "v2.15", -- uncomment to pin to a specific release
	init = function()
		-- VimTeX configuration goes here, e.g.
		vim.g.vimtex_view_method = "zathura"
		-- This is to make it work with WSL
		vim.g.vimtex_view_general_viewer = "sh"
		vim.g.vimtex_view_general_options = '-c "GDK_BACKEND=x11 zathura --synctex-forward @line:@col:@tex @pdf"'
	end,
}
