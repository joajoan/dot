local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("config")
require("lazy").setup("plugins", {
  change_detection = { notify = false },
  install = {
    colorscheme = { "dracula" },
  },
  ui = {
    border = "rounded",
    title = " Lazy ",
  },
})
