return {
  "olexsmir/gopher.nvim",
  ft = "go",
  config = function()
    vim.keymap.set("n", "<leader>ee", function() vim.cmd.GoIfErr() end)
  end,
  opts = {},
}
