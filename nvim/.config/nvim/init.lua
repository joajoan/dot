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
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.showmode = false
vim.opt.spell = true
vim.opt.spelllang = {'en_us'}
require("lazy").setup("plugins")
