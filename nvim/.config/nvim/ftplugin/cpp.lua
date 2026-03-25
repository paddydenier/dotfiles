-- compile
vim.opt_local.makeprg = "g++ % -o ./%:t:r"

-- run
vim.keymap.set("n", "<leader>r", function()
	vim.cmd.vsplit()
	vim.cmd.term("./" .. vim.fn.expand("%:t:r"))
end, { buffer = true })
