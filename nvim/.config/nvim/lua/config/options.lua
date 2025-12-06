-- automatically use system clipboard by default
-- vim.opt.clipboard = "unnamedplus"
vim.g.clipboard = {
	name = "WslClipboard",
	copy = {
		["+"] = "clip.exe",
		["*"] = "clip.exe",
	},
	paste = {
		["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
	},
	cache_enabled = 0,
}

-- Relative and current line number
vim.opt.number = true
vim.opt.relativenumber = true

-- Set appearance of tabs to 4 spaces only visually
vim.opt.tabstop = 4    -- appearance of tab character
vim.opt.shiftwidth = 4 -- number of spaces in auto indent new line

-- Ruler lines
-- vim.opt.colorcolumn = "81,101,121"

-- Nowrap
vim.opt.wrap = false

-- disable startup message
vim.opt.shortmess:append({ I = true })

vim.opt.swapfile = false

-- resolve windows clipboad issue
vim.opt.clipboard = "unnamedplus"

-- diagnostic
vim.opt.signcolumn = "yes"
vim.diagnostic.enable(true)

-- obsidian
vim.opt.conceallevel = 2
