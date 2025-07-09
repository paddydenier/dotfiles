vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = { "*.cpp", "*.cc" },
  callback = function()
    vim.cmd('0r ~/.config/nvim/skeletons/skeleton.cpp')
  end,
})


