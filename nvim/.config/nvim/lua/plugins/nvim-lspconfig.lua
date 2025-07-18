return {
  "neovim/nvim-lspconfig",
  event = { "BufNewFile", "BufReadPost" },
  config = function()
    vim.lsp.enable({
      "lua_ls",
      "pyright",
      "sqruff",
      "ts_ls",
      "ty",
      "ruff",
      "rust_analyzer",
    })
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
    vim.lsp.config("pyright", {
      settings = {
        pyright = { disableOrganizeImports = true },
        python = {
          analysis = { ignore = { "*" } },
        },
      },
    })
  vim.lsp.config('ty', {
    init_options = {
      settings = {
        python = {
          ty = { disableLanguageServices = true },
        },
      },
    },
  })
  end,
}
