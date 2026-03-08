return {
  "HiPhish/rainbow-delimiters.nvim",
  event = { "BufNewFile", "BufReadPost" },
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  opts = {
    priority = { [''] = 110 },
  },
  main = "rainbow-delimiters.setup",
}
