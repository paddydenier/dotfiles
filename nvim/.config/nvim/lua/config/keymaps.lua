-- lazy update
vim.keymap.set("n", "<leader>la", "<cmd>Lazy update<CR>", { desc = "Update lazy plugins" })

-- Oil keymaps (change to shorter keymaps)
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory in Oil" })
vim.keymap.set("n", "<leader>vim", "<cmd>Oil ~/.config/nvim<CR>", { desc = "Open neovim config directory in oil" })
vim.keymap.set("n", "<leader>code", "<cmd>Oil ~/code<CR>", { desc = "Open code project directory in oil" })

-- Telescope keymaps
vim.keymap.set("n", "<leader>fd", ":Telescope diagnostics<CR>")
vim.keymap.set(
	"n",
	"<leader>ff",
	":lua require('telescope.builtin').find_files({ hidden = true, no_ignore = true, follow = true })<CR>"
)
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>ft", ":Telescope colorscheme theme=dropdown<CR>")
vim.keymap.set("n", "<leader>fs", "<cmd>NewFromTemplate<CR>")
vim.keymap.set("n", "<leader>fj", ":Telescope jumplist<CR>")
vim.keymap.set("n", "<leader>fn", ":Telescope live_grep cwd=~/personal/notes<CR>")
-- TODO find better keymap
vim.keymap.set("n", "<leader>ls", ":Telescope spell_suggest<CR>")

-- quick and dirty print to pdf command keymap
-- vim.keymap.set("n", "<leader>pp", function()
-- 	local fname = vim.fn.expand("%:t:r") -- base file name (without extension)
-- 	local pdf_path = fname .. ".pdf" -- output PDF in PWD
-- 	local tmp_html = "/tmp/" .. fname .. ".html" -- temp HTML file
-- 
-- 	vim.cmd("TOhtml") -- convert current buffer to HTML
-- 	vim.cmd("write! " .. tmp_html) -- save to temp HTML file
-- 	vim.cmd("silent !wkhtmltopdf " .. tmp_html .. " " .. pdf_path) -- convert to PDF
-- 	vim.cmd("bwipeout!") -- close the temporary HTML buffer
-- 	vim.fn.delete(tmp_html) -- delete the temp HTML file
-- 	vim.cmd("silent !zathura " .. pdf_path .. " &") -- open PDF with Zathura
-- end, { desc = "Export buffer to PDF and open in Zathura" })

-- git signs
vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>")
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>")

-- important keymaps
vim.keymap.set("n", "<leader>o", ":source<CR> :update<CR>")
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<leader>q", ":q!<CR>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>wqa", ":wqa<CR>")
vim.keymap.set("n", "<leader>p", ":update<CR><C-z>")

-- code actions
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

-- edit-compile-run workflow
vim.keymap.set("n", "<leader>co", ":copen<CR>")
vim.keymap.set("n", "<leader>cc", ":ccl<CR>")
vim.keymap.set("n", "<leader>cn", ":cnext<CR>")
vim.keymap.set("n", "<leader>cp", ":cprev<CR>")
vim.keymap.set("n", "<leader>e", ":update | make<CR>") -- compile


-- vimwiki remaps
vim.api.nvim_create_autocmd("FileType", {
	pattern = "vimwiki",
	callback = function()
		vim.keymap.set("n", "<C-l>", "<Plug>VimwikiDiaryNextDay", { silent = true, buffer = true })
		vim.keymap.set("n", "<C-j>", "<Plug>VimwikiDiaryPrevDay", { silent = true, buffer = true })
	end,
})
vim.keymap.set("n", "<leader>wj", ":VimwikiMakeYesterdayDiaryNote<CR>")
vim.keymap.set("n", "<leader>wk", ":VimwikiMakeDiaryNote<CR>")
vim.keymap.set("n", "<leader>wl", ":VimwikiMakeTomorrowDiaryNote<CR>")

vim.keymap.set("n", "<leader>fw", function()
	require("telescope.builtin").live_grep({ cwd = "~/wiki/notes_plain/" })
end, { desc = "Search in wiki folder" })

vim.keymap.set("n", "<leader>wm", function()
	vim.fn.jobstart({ "make", "-C", "~/wiki/" })
end, { desc = "Run Make in wiki folder" })
