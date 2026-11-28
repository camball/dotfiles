require("config.lazy")
require("config.keymaps")
require("config.langmaps")

-- Relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable a separate highlight group for the cursor line
vim.opt.cursorline = true
vim.opt.cursorlineopt = "number"

-- Disable line wrapping
vim.opt.wrap = false
vim.opt.sidescrolloff = 8

-- Global, so no plugin-specific UI needed
vim.opt.winborder = "rounded"
