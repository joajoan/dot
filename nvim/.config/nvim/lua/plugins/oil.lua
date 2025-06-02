return {
  "stevearc/oil.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VimEnter",
  keys = {
    { "-", "<CMD>Oil<CR>" },
  },
  opts = {
    default_file_explorer = true,
    view_options = { show_hidden = true },
  },
}
