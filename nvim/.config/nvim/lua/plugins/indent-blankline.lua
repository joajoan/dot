return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufNewFile", "BufReadPost" },
  cond = not vim.g.vscode,
  main = "ibl",
  opts = {
    scope = { show_start = false, show_end = false}
  },
}
