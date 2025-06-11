return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- optional for icons
	config = function()
		require("lualine").setup({
-- 			sections = {
-- 				lualine_a = { "lsp_status" },
-- 			},
		})
	end,
}
