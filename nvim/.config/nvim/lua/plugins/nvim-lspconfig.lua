return {
  "neovim/nvim-lspconfig",
  event = { "BufNewFile", "BufReadPost" },
  config = function()
    vim.lsp.config("lua_ls", {
      settings = {
        Lua = {
          runtime = { version = "LuaJIT" },
          workspace = {
            library = { vim.env.VIMRUNTIME },
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
    vim.lsp.config("ruff", {
      on_attach = function(client)
        client.server_capabilities.hoverProvider = false
      end,
    })
    vim.lsp.enable({
      "lua_ls",
      "sqruff",
      "ts_ls",
      "ruff",
      "ty",
      "rust_analyzer",
    })
  end,
}
