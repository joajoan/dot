return {
  "HiPhish/rainbow-delimiters.nvim",
  event = { "BufNewFile", "BufReadPost" },
  init = function ()
    vim.api.nvim_set_hl(0, "DelimiterCyan", { fg = "#80D7EA" })
    vim.api.nvim_set_hl(0, "DelimiterPink", { fg = "#EB6FB7" })
    vim.api.nvim_set_hl(0, "DelimiterGreen", { fg = "#4AE771" })
    vim.api.nvim_set_hl(0, "DelimiterOrange", { fg = "#EBAA63" })
    vim.api.nvim_set_hl(0, "DelimiterRed", { fg = "#EB4E4E" })
    vim.api.nvim_set_hl(0, "DelimiterPurple", { fg = "#AE87E6" })
    vim.api.nvim_set_hl(0, "DelimiterYellow", { fg = "#DEE781" })
  end,
  opts = {
    highlight = {
      "DelimiterRed",
      "DelimiterOrange",
      "DelimiterPink",
      "DelimiterCyan",
      "DelimiterYellow",
      "DelimiterPurple",
      "DelimiterGreen",
    },
  },
  main = "rainbow-delimiters.setup",
}
