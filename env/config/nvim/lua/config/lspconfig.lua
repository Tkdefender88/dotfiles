local util = require("lspconfig/util")

local cmp = require('cmp')
local cmp_lsp = require("cmp_nvim_lsp")

local capabilities = vim.tbl_deep_extend(
  "force",
  {},
  vim.lsp.protocol.make_client_capabilities(),
  cmp_lsp.default_capabilities())

local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
  }),
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' }, -- For luasnip users.
    { name = 'supermaven' },
  }, {
    { name = 'buffer' },
  })
})

vim.diagnostic.config({
  update_in_insert = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

vim.lsp.config("gopls", {
  capabilities = capabilities,
  cmd = { "/home/juicetin/go/bin/gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_markers = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    ['gopls'] = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  },
})
vim.lsp.enable("gopls")

vim.lsp.enable("zls")
vim.lsp.enable("lua_ls")
vim.lsp.enable("gleam")
vim.lsp.enable("emmet_ls")
