---@class SchemePrimaryPalette
local primary = {
  bg = "#000000",
  fg = "#F8F8F2",
}

---@class SchemeNormalPalette
local normal = {
  black = "#191A21",
  blue = "#9B6BDF",
  cyan = "#8BE9FD",
  green = "#50FA7B",
  orange = "#FFB86C",
  pink = "#FF79C6",
  purple = "#BD93F9",
  red = "#FF5555",
  white = "#ABB2BF",
  yellow = "#F1FA8C",
}

---@class SchemeBrightPalette
local bright = {
  black = "#7A7A7A",
  blue = "#D6ACFF",
  cyan = "#A4FFFF",
  green = "#69FF94",
  magenta = "#FF92DF",
  red = "#FF6E6E",
  white = "#FFFFFF",
  yellow = "#FFFFA5",
}

---@class SchemeUiPalette
local ui = {
  comment = "#6272A4",
  gutter = "#4B5263",
  menu = "#21222C",
  nontext = "#3B4048",
  panel = "#262626",
  selection = "#1a1a1a",
  visual = "#3E4452",
}

---@class SchemePalette
local palette = {
  primary = primary,
  normal = normal,
  bright = bright,
  ui = ui,
}

return palette
