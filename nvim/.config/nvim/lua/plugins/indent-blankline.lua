return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  main = "ibl",
  opts = {
    scope = { show_start = false, show_end = false}
  }
}
