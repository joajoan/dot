-- Strip trailing white-spaces.
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- Highlight on yank.
vim.api.nvim_create_autocmd("TextYankPost", {
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 40,
    })
  end,
})

-- Create LSP-based shortcuts.
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserKeymap", { clear = true }),
  callback = function(event)
    local opts = { buffer = event.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  end,
})

-- Set comment string for SQL files.
vim.api.nvim_create_autocmd("FileType", {
  pattern = "sql",
  callback = function()
    vim.bo.commentstring = "-- %s"
  end,
})

-- Auto-load buffer on disk change.
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  callback = function()
    if vim.fn.mode() ~= "c" then
      vim.cmd("checktime")
    end
  end,
})
