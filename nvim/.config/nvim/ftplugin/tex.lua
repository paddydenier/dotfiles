-- compile
vim.opt_local.makeprg = "latexmk -pdf -interaction=nonstopmode %"

-- run
vim.keymap.set("n", "<leader>r", function()
  vim.fn.jobstart({ "zathura", vim.fn.expand("%:r") .. ".pdf" }, { detach = true })
end, { buffer = true })

