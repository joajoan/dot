return {
  "Mofiqul/dracula.nvim",
  name = "dracula",
  event = "UIEnter",
  opts = {
    colors = { bg = "#000000" },
    overrides = {
      CursorLine = { bg = "#1a1a1a" },
    },
  },
  config = function(_, opts)
    require("dracula").setup(opts)
    vim.cmd("colorscheme dracula")
  end
}
