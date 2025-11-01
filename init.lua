require("config.lazy")
require("config.keymaps")
require("config.options")
require("config.skeletons")
vim.cmd.colorscheme("carbonfox")

-- diagnostics
vim.opt.signcolumn = "yes"
vim.diagnostic.enable(true)
