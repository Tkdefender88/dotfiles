return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').setup({
        prefer_git = true,
        ensure_installed = {
          "javascript",
          "typescript",
          "go",
          "c",
          "lua",
          "vim",
          "vimdoc",
          "query",
          "markdown",
          "markdown_inline",
          "gleam",
          "zig",
          "rust",
          "python",
        },
      })
    end
}
