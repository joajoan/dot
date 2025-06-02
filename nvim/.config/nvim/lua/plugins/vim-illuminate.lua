return {
  "RRethy/vim-illuminate",
  event = { "BufNewFile", "BufReadPost" },
  cond = not vim.g.vscode,
  init = function ()
    vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = "#3c3836" })
    vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = "#3c3836" })
  end,
  opts = { delay = 250 },
  config = function (_, opts)
    require("illuminate").configure(opts)
  end,
}
