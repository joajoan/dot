return {
  "romus204/tree-sitter-manager.nvim",
  event = { "BufNewFile", "BufReadPost" },
  opts = {
    ensure_installed = {
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "lua",
      "markdown",
      "markdown_inline",
      "python",
      "sql",
      "rust",
    },
    auto_install = true,
    highlight = true,
    border = "rounded",
  },
}
