local theme = require("scheme.theme").lualine()

local function location()
  local cursor = vim.api.nvim_win_get_cursor(0)
  return string.format("%d:%d", cursor[1], cursor[2] + 1)
end

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
        { location, separator = { left = "", right = "" } },
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
