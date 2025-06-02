return {
  "RRethy/vim-illuminate",
  event = { "BufNewFile", "BufReadPost" },
  opts = {
    delay = 480,
    modes_denylist = { "s" },
  },
  config = function(_, opts)
    require("illuminate").configure(opts)
    vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = "#3c3836" })
  end,
}
