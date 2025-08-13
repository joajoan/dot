return {
  "mfussenegger/nvim-lint",
  event = { "BufNewFile", "BufReadPost" },
  opts = {
    events = { "BufWritePost", "BufNewFile", "InsertLeave" },
    linters_by_ft = {
      python = { "mypy" },
    }
  },
  config = function(_, opts)
    local lint = require("lint")
    lint.linters_by_ft = opts.linters_by_ft
    vim.api.nvim_create_autocmd(opts.events, {
      callback = function() lint.try_lint() end,
    })
  end
}
