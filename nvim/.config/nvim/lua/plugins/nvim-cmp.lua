return {
  "hrsh7th/nvim-cmp",
  event = { "CmdlineEnter", "InsertEnter" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.close(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp", keyword_length = 0 },
      }, {
        { name = "buffer" },
        { name = "path" },
      }),
    })
    cmp.setup.cmdline(":", {
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        { name = "cmdline" },
      }),
    })
  end,
}
