return {
  "Mofiqul/dracula.nvim",
  name = "dracula",
  lazy = false,
  priority = 1000,
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
