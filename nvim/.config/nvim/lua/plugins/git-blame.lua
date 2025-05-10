return {
  "f-person/git-blame.nvim",
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  opts = {
    date_format = "%m-%d-%Y %H:%M:%S",
    delay = 0,
    highlight_group = "GitBlame",
  },
  config = function (_, opts)
    local cursor_line = vim.api.nvim_get_hl(0, { name = "CursorLine" })
    vim.api.nvim_set_hl(0, opts.highlight_group, {
      fg = "#7A7A7A",
      bg = cursor_line.bg,
    })
    require("gitblame").setup(opts)
  end
}
