-- Require lazy
require("config.lazy")

-- Global options
--   For per file options see after/ftplugin/<FT>.lua
vim.opt.shiftwidth = 2
vim.opt.number = true
-- vim.opt.relativenumber = true
-- vim.opt.clipboard = "unamedplus" -- Defaults to clipboard for 'p'

-- Set keymap bindings
require("config.keymap")

-- yank (yy, yap etc.) highlighting
require("config.yank-highlight")
