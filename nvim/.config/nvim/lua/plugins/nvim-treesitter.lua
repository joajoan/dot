return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { 
	"lua", 
	"python", 
	"sql", 
	"rust", 
      },  
      sync_install = false,
      auto_install = true,  
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      spell = {
        enable = true,  
      },
      indent = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },
    })
  end
}
