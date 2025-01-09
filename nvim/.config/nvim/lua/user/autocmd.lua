-- Strip trailing white-spaces.
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*", command = [[%s/\s\+$//e]],
})

-- Highlight on yank.
vim.api.nvim_create_autocmd('TextYankPost', {
  pattern = '*',
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 40,
    })
  end,
})

-- Create LSP-based shortcuts.
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserKeymap', { clear = true }),
  callback = function(event)
    local opts = { buffer = event.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<leader>vf", vim.lsp.buf.format, opts)
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
  end,
})

-- Disable hover capability from Ruff.
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup('RuffLsp', { clear = true }),
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client == nil then
      return
    end
    if client.name == 'ruff' then
      client.server_capabilities.hoverProvider = false
    end
  end,
})
