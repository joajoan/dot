return {
  'nvim-treesitter/nvim-treesitter-context',
  event = { "BufReadPost", "BufWritePost", "BufNewFile" },
  config = function()
    require('treesitter-context').setup({
      separator = '─',
    })
  end
}
