return {
  "nvimtools/none-ls.nvim",
  ft = "go",
  opts = function()
    return require "config.null-ls"
  end
}
