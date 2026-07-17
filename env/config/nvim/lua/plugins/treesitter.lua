return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    branch = 'main',
    build = ':TSUpdate',
    config = function()
      local ensure_installed = {
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
      }

      require('nvim-treesitter').setup({
        prefer_git = true,
      })

      local installed = require('nvim-treesitter.config').get_installed()
      local missing = vim.tbl_filter(function(lang)
        return not vim.tbl_contains(installed, lang)
      end, ensure_installed)
      if #missing > 0 then
        require('nvim-treesitter').install(missing)
      end

      vim.api.nvim_create_autocmd('FileType', {
        pattern = '*',
        callback = function()
          pcall(vim.treesitter.start)
        end,
      })
    end
}
