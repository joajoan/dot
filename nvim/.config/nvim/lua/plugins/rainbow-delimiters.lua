return {
  "HiPhish/rainbow-delimiters.nvim",
  event = { "BufNewFile", "BufReadPost" },
  opts = {
    priority = { [''] = 110 },
  },
  main = "rainbow-delimiters.setup",
}
