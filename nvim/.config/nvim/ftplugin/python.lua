-- run
vim.keymap.set("n", "<leader>r", function()
	vim.cmd("update")
	vim.cmd.vsplit()
	vim.cmd.term("python3 " .. vim.fn.expand("%"))
end, { buffer = true })
