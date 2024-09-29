return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason-lspconfig")
    local lspconfig = require("lspconfig")
    mason.setup({
      ensure_installed = {
        "pyright",
        "lua_ls",
        "rust_analyzer",
        "sqlls",
      },
    })
    mason.setup_handlers({
      function(server_name)
        lspconfig[server_name].setup({})
      end,
    })
  end,
}
