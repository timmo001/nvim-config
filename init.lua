-- Require lazy
require("config.lazy")

-- Global options
--   For per file options see after/ftplugin/<FT>.lua
vim.opt.shiftwidth = 2
vim.opt.number = true
-- vim.opt.relativenumber = true

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Set keymap bindings
require("config.keymap")

-- yank (yy, yap etc.) highlighting
require("config.yank-highlight")
