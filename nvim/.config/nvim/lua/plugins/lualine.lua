local theme = require("scheme.theme").lualine()

return {
  "nvim-lualine/lualine.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  event = "UIEnter",
  opts = {
    options = {
      always_divide_middle = true,
      component_separators = "",
      section_separators = { left = "", right = "" },
      theme = theme,
    },
    sections = {
      lualine_a = {
        { "mode", separator = { left = "", right = "" } },
      },
      lualine_b = { "branch", "filename" },
      lualine_c = {},
      lualine_x = {},
      lualine_y = { "filetype", "progress" },
      lualine_z = {
        { "location", separator = { left = "", right = "" } },
      },
    },
    inactive_sections = {
      lualine_a = {
        { "filename", separator = { left = "", right = "" } },
      },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {
        { "filetype", separator = { left = "", right = "" } },
      },
    },
    tabline = {},
    extensions = {},
  },
}
