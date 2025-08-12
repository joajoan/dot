return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  keys = {
    { "<leader>ff", "<CMD>Telescope find_files<CR>" },
    { "<leader>fg", "<CMD>Telescope live_grep<CR>" },
    { "<leader>fb", "<CMD>Telescope buffers<CR>" },
    { "<leader>fd", "<CMD>Telescope diagnostics<CR>" },
    { "<leader>fs", "<CMD>Telescope lsp_document_symbols <CR>" },
  },
  opts = {
    defaults = {
      file_ignore_patterns = { "%.git/" },
      mappings = {
        n = { ["<C-c>"] = "close" },
      },
    },
    pickers = {
      find_files = { hidden = true },
      live_grep = {
        additional_args = { "--hidden" },
      },
      buffers = {
        ignore_current_buffer = true,
        sort_lastused = true,
        sort_mru = true,
      },
      diagnostics = { bufnr = 0 },
    },
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      }
    },
  },
  config = function (_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension("fzf")
  end,
}
