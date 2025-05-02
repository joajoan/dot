return {
  "Mofiqul/dracula.nvim",
  name = "dracula",
  lazy = false,
  priority = 1000,
  config = function()
    require("dracula").setup({
      colors = { bg = "#000000" },
      overrides = {
        CursorLine = {
          bg = "#1a1a1a",
        },
      },
    })
    vim.cmd("colorscheme dracula")
  end
}
