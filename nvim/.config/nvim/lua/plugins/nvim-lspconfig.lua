local group = vim.api.nvim_create_augroup("LspFormatOnSave", { clear = true })
local function on_attach(_, buffer)
  vim.api.nvim_clear_autocmds({ group = group, buffer = buffer })
  vim.api.nvim_create_autocmd("BufWritePre", {
    group = group,
    buffer = buffer,
    callback = function()
      vim.lsp.buf.format({ async = false })
    end
  })
end

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
      on_attach = on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })
    vim.lsp.config("ty", {
      settings = {
        ty = { diagnosticMode = "workspace" },
      },
    })
    vim.lsp.config("ruff", { on_attach = on_attach })
  end,
}
