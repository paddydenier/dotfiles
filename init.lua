require("config.lazy")
require("config.keymaps")
vim.cmd.colorscheme("catppuccin")

-- Relative and current line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Set appearance of tabs to 4 spaces only visually
vim.opt.tabstop = 4    -- appearance of tab character
vim.opt.shiftwidth = 4 -- number of spaces in auto indent new line

-- Ruler lines
vim.opt.colorcolumn = "81,101,121"

-- Nowrap
vim.opt.wrap = false

-- disable startup message
vim.opt.shortmess:append({ I = true })
