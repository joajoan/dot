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

-- Rounded borders.
vim.diagnostic.config({
  float = {border = "rounded"},
})

-- Disable startup message.
vim.opt.shortmess:append("I")

-- Rounded LSP borders.
local open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = opts.border or "rounded"
  return open_floating_preview(contents, syntax, opts, ...)
end

-- Disable OmniSQL default mappings.
vim.g.omni_sql_no_default_maps = true

-- Add cursor-line.
vim.opt.cursorline = true

-- Specify file-types for target files.
vim.filetype.add({
  filename = {
    ['.shellrc'] = 'sh',
    ['.zprofile'] = 'zsh'
  },
  pattern = {
    ['.*%.shell_[a-z_]+'] = 'sh',
    ['.*%.zsh[a-z_]+'] = 'zsh',
  },
})
