---Private Dracula colorscheme.
---@class Scheme
---@field load fun()
local M = {}

M.palette = require("scheme.palette")

---Load the colorscheme into the current Neovim session.
function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "scheme"
  require("scheme.groups").setup(M.palette)
end

return M
