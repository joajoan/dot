-- Leader key.
vim.g.mapleader = ' '

-- Line numbering.
vim.opt.nu = true
vim.opt.relativenumber = true

-- Sensible indenting.
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Disable line wrapping.
vim.opt.wrap = false

-- Improve undo experience.
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

-- Search settings.
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- True color support.
vim.opt.termguicolors = true

-- Improved scrolling.
vim.opt.scrolloff = 8

-- Faster responsiveness.
vim.opt.updatetime = 100

-- Always show signs.
vim.opt.signcolumn = 'number'

-- Enable special filename characters.
vim.opt.isfname:append('@-@')

-- Hide mode indicator.
vim.opt.showmode = false

-- Enable spelling.
vim.opt.spell = true
vim.opt.spelllang = {'en_us', 'sv'}

-- Built-in file browser.
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
