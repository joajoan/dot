--- Theme integrations derived from the active color palette.
local M = {}

local palette = require("scheme.palette")

--- Returns a lualine-compatible theme table built from the internal palette.
--- @return table
function M.lualine()
  return {
    normal = {
      a = { fg = palette.primary.bg, bg = palette.normal.blue, gui = "bold" },
      b = { fg = palette.primary.fg, bg = palette.ui.panel },
      c = { fg = palette.primary.fg, bg = palette.primary.bg },
    },
    insert = {
      a = { fg = palette.primary.bg, bg = palette.normal.green, gui = "bold" },
    },
    visual = {
      a = { fg = palette.primary.bg, bg = palette.normal.cyan, gui = "bold" },
    },
    replace = {
      a = { fg = palette.primary.bg, bg = palette.normal.red, gui = "bold" },
    },
    command = {
      a = { fg = palette.primary.bg, bg = palette.normal.yellow, gui = "bold" },
    },
    inactive = {
      a = { fg = palette.bright.white, bg = palette.bright.black },
      b = { fg = palette.bright.white, bg = palette.bright.black },
      c = { fg = palette.bright.white, bg = palette.primary.bg },
    },
  }
end

return M
