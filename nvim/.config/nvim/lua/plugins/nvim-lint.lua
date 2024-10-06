return {
  "mfussenegger/nvim-lint",
  opts = {
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      python = { "flake8" },
      sql = { "sqlfluff" },
      rust = { "clippy" },
    }
  },
  config = function(_, opts)
    local lint = require('lint')
    lint.linters_by_ft = opts.linters_by_ft
    for _, event in ipairs(opts.events) do
      vim.api.nvim_create_autocmd(event, {
        pattern = "*",
        callback = function()
          lint.try_lint()
        end,
      })
    end
  end
}
