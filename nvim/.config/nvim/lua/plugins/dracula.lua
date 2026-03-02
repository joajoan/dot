return {
  "Mofiqul/dracula.nvim",
  event = "UIEnter",
  name = "dracula",
  opts = {
    colors = { bg = "#000000" },
    overrides = {
      CursorLine = { bg = "#1a1a1a" },
      CmpItemAbbr = { fg = "#f8f8f2", bg = "NONE" },
      CmpItemAbbrMatch = { fg = "#8be9fd", bg = "NONE", bold = true },
      CmpItemAbbrMatchFuzzy = { fg = "#8be9fd", bg = "NONE", bold = true },
      MatchParen = { bg = "#44475A", underline = false },
    },
  },
  config = function(_, opts)
    require("dracula").setup(opts)
    vim.cmd.colorscheme("dracula")
  end,
}
