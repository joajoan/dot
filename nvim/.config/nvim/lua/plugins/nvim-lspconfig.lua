return {
  "neovim/nvim-lspconfig",
  event = { "BufNewFile", "BufReadPost" },
  config = function()
    vim.lsp.enable({
      "lua_ls",
      "pyright",
      "sqruff",
      "ts_ls",
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
      settings = {
        ty = { disableLanguageServices = true },
      },
    })
  end,
}
