-- Here you will find all the configured keymaps
-- Make sure to set them here to keep init.lua clean

-- Reload and lua keybinds
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<space>x", ":.lua<CR>")
vim.keymap.set("v", "<space>x", ":lua<CR>")

-- Format
vim.keymap.set("n", "<space>ff", function()
  require("conform").format({ async = true })
end)
