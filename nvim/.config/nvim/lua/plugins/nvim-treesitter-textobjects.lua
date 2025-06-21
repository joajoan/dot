return {
  "nvim-treesitter/nvim-treesitter-textobjects",
  lazy = true,
  opts = {
    textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["ab"] = "@block.outer",
          ["ib"] = "@block.inner",
          ["ac"] = "@class.outer",
          ["ic"] = "@class.inner",
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
        },
        selection_modes = {
          ["@block.outer"] = "V",
          ["@class.outer"] = "V",
          ["@function.outer"] = "V",
        },
        include_surrounding_whitespace = true,
      },
    }
  },
  main = "nvim-treesitter.configs",
}
