return {
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  main = 'ibl',
  config = function ()
    require("ibl").setup({
      scope = { show_start = false, show_end = false}
    })
  end
}
