require("config.lazy")
vim.keymap.set("n", "<leader>la", "<cmd>Lazy update<CR>", { desc = "Update lazy plugins" })

-- Default configurations

vim.cmd.colorscheme("catppuccin")

-- Relative and current line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Set appearance of tabs to 4 spaces only visually
vim.opt.tabstop = 4		-- appearance of tab character
vim.opt.shiftwidth = 4	-- number of spaces in auto indent new line

-- Ruler lines
vim.opt.colorcolumn = "81,101,121"

-- Nowrap
vim.opt.wrap = false

-- Oil keymaps (change to shorter keymaps)
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open parent directory in Oil" })
vim.keymap.set("n", "<leader>vim", "<cmd>Oil ~/.config/nvim<CR>", { desc = "Open neovim config directory in oil" })
vim.keymap.set("n", "<leader>code", "<cmd>Oil ~/code<CR>", { desc = "Open code project directory in oil" })

-- Telescope keymaps
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
-- open code actions
vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', { noremap = true, silent = true })

-- disable startup message
vim.opt.shortmess:append({ I = true })
