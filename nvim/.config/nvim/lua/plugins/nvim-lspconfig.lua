return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    require("lspconfig.configs").sqruff = {
      default_config = {
        cmd = { "sqruff", "lsp" },
        filetypes = { "sql" },
        root_dir = lspconfig.util.root_pattern(".sqruff") or vim.fs.root(),
        settings = {},
      },
    }
    lspconfig.lua_ls.setup({
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          }
        }
      }
    })
    lspconfig.ruff.setup({})
    lspconfig.pyright.setup({
      settings = {
        pyright = { disableOrganizeImports = true },
        python = {
          analysis = { typeCheckingMode = "off" },
        }
      },
    })
    lspconfig.sqruff.setup({})
  end,
}
