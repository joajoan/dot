return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>ff", "<CMD>FzfLua files<CR>" },
    { "<leader>fg", "<CMD>FzfLua live_grep<CR>" },
    { "<leader>fb", "<CMD>FzfLua buffers<CR>" },
    { "<leader>fd", "<CMD>FzfLua diagnostics_document<CR>" },
    { "<leader>fs", "<CMD>FzfLua lsp_document_symbols<CR>" },
    { "<leader>fc", "<CMD>FzfLua git_status<CR>" },
  },
  opts = {
    grep = {
      rg_opts = "--hidden --glob=!.git/ -e",
    },
    buffers = {
      ignore_current_buffer = true,
      sort_lastused = true,
    },
  },
}
