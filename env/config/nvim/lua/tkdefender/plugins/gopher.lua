return {
  "olexsmir/gopher.nvim",
  ft = "go",
  config = function(_, opts)
    require("gopher").setup(opts)
    vim.keymap.set("n", "<leader>ee", function() vim.cmd [[silent! GoIfErr]] end)
  end,
  build = function()
    vim.cmd [[silent! GoInstallDeps]]
  end,
}
