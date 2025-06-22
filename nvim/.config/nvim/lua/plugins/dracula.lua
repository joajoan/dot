return {
  "Mofiqul/dracula.nvim",
  event = "UIEnter",
  name = "dracula",
  opts = {
    colors = { bg = "#000000" },
    overrides = {
      CursorLine = { bg = "#1a1a1a" },
      MatchParen = { bg = "#44475A", underline = false },
    },
  },
  config = function(_, opts)
    require("dracula").setup(opts)
    vim.cmd.colorscheme("dracula")
  end,
}
