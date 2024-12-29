return {
  "nvim-telescope/telescope.nvim",
  --tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim", { "nvim-telescope/telescope-fzf-native.nvim", build = "make" } },
  config = function()
    local ts = require("telescope")

    ts.setup({
      extensions = {
        fzf = {},
      },
    })

    ts.load_extension("fzf")

    local builtin = require("telescope.builtin")

    vim.keymap.set("n", "<space>fd", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<space>fg", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<space>fb", builtin.buffers, { desc = "Telescope buffers" })
    vim.keymap.set("n", "<space>fh", builtin.help_tags, { desc = "Telescope help tags" })

    -- Opens find files window in the nvim config dir (edit neovim)
    vim.keymap.set("n", "<space>en", function()
      builtin.find_files({
        cwd = vim.fn.stdpath("config"),
      })
    end)

    -- Opens find files window in the repos dir
    vim.keymap.set("n", "<space>er", function()
      builtin.find_files({
        cwd = "~/repos",
      })
    end)

    -- Looks at the plugins directory
    vim.keymap.set("n", "<space>ep", function()
      builtin.find_files({
        cwd = vim.fs.joinpath(vim.fn.stdpath("data") .. "lazy"),
      })
    end)

    require("config.telescope.multigrep").setup()
  end,
}
