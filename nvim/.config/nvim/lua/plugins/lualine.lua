local colors = {
  bright = { black = "#7A7A7A", white = "#FFFFFF" },
  normal = {
    black   = "#262626",
    blue    = "#9B6BDF",
    cyan    = "#75D7EC",
    green   = "#42E66C",
    red     = "#E64747",
    yellow  = "#E4F34A",
  },
  primary = { bg = "#000000", fg = "#F8F8F2" },
}

local theme = {
  normal = {
    a = { fg = colors.primary.bg, bg = colors.normal.blue, gui = "bold" },
    b = { fg = colors.primary.fg, bg = colors.normal.black },
    c = { fg = colors.primary.fg, bg = colors.primary.bg },
  },
  insert = {
    a = { fg = colors.primary.bg, bg = colors.normal.green, gui = "bold" },
  },
  visual = {
    a = { fg = colors.primary.bg, bg = colors.normal.cyan, gui = "bold" },
  },
  replace = {
    a = { fg = colors.primary.bg, bg = colors.normal.red, gui = "bold" },
  },
  command = {
    a = { fg = colors.primary.bg, bg = colors.normal.yellow, gui = "bold" },
  },
  inactive = {
    a = { fg = colors.bright.white, bg = colors.bright.black },
    b = { fg = colors.bright.white, bg = colors.bright.black },
    c = { fg = colors.bright.white, bg = colors.primary.bg },
  },
}

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
        { "mode", separator = { left = "", right = ""} },
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
