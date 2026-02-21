return {
  "neovim/nvim-lspconfig",
  event = { "BufNewFile", "BufReadPost" },
  config = function()
    vim.lsp.enable({
      "lua_ls",
      "sqruff",
      "ts_ls",
      "ruff",
      "ty",
      "rust_analyzer",
    })
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("", true),
            checkThirdParty = false,
          },
        },
      },
    })
    vim.lsp.config("ty", {
      settings = {
        ty = { diagnosticMode = "workspace" },
      },
    })
  end,
}
