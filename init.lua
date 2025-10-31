require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.skeletons")
vim.cmd.colorscheme("catppuccin")

-- diagnostics
vim.opt.signcolumn = "yes"
vim.diagnostic.enable(true)
