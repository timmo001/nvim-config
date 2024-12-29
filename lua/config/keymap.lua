-- Here you will find all the configured keymaps
-- Make sure to set them here to keep init.lua clean

-- Reload
vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>", { desc = "Reload config" })

-- Format
vim.keymap.set("n", "<space>ff", function()
  require("conform").format({ async = true })
end)
