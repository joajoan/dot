return {
  "RRethy/vim-illuminate",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  config = function()
    require("illuminate").configure({
      delay = 480,
      modes_denylist = { "s" },
    })
    vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = "#3c3836" })
  end,
}
