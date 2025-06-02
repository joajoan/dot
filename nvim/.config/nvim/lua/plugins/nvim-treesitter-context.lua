return {
  "nvim-treesitter/nvim-treesitter-context",
  lazy = true,
  cond = not vim.g.vscode,
  opts = { separator = "─" },
}
