return {
  "nvimtools/none-ls.nvim",
  ft = "go",
  opts = function()
    return require "tkdefender.configs.null-ls"
  end
}
