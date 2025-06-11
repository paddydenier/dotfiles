-- Default configurations
-- automatically use system clipboard by default
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Tank line to system clipboard" })

-- lazy update
vim.keymap.set("n", "<leader>la", "<cmd>Lazy update<CR>", { desc = "Update lazy plugins" })

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
vim.api.nvim_set_keymap("n", "<leader>ft", ":Telescope colorscheme<CR>", { noremap = true, silent = true })

-- open code actions
vim.api.nvim_set_keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", { noremap = true, silent = true })

-- nvim pause workflow
vim.keymap.set("n", "<leader>a", ":w<CR><C-z>", { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>wq", ":wq<CR>", { noremap = true, silent = true })

-- basic buffer switching
vim.keymap.set('n', '<leader><tab>', '<C-^>', { noremap = true, silent = true })
