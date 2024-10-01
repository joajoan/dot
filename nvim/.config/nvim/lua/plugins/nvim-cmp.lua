return {
  -- Auto-completion plugin
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",    -- LSP source for nvim-cmp
      "hrsh7th/cmp-buffer",      -- Buffer completions
      "hrsh7th/cmp-path",        -- File path completions
      "hrsh7th/cmp-cmdline",     -- Command-line completions
      "saadparwaiz1/cmp_luasnip",-- Snippet completions
      "L3MON4D3/LuaSnip",        -- Snippet engine
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
          end,
        },
        mapping = {
          ["<Tab>"] = cmp.mapping.select_next_item(),
          ["<S-Tab>"] = cmp.mapping.select_prev_item(),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.close(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- Confirm selection
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" },  -- LSP completions
          { name = "luasnip" },   -- Snippet completions
        }, {
          { name = "buffer" },    -- Buffer completions
          { name = "path" },      -- Path completions
        }),
      })

      -- Setup completion for command-line mode
      cmp.setup.cmdline(":", {
        sources = cmp.config.sources({
          { name = "path" },
        }, {
          { name = "cmdline" },
        }),
      })
    end,
  },
}

