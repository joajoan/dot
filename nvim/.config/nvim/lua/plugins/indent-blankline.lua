return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufNewFile", "BufReadPost" },
  main = "ibl",
  opts = {
    scope = { show_start = false, show_end = false}
  },
}
