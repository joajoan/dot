return { 
  "Mofiqul/dracula.nvim",
  name="dracula",
  priority=1000,
  config = function()
    require("dracula").setup({
      colors = { 
        bg = "#000000",
      },
      overrides = {
	LazyNormal = { -- LazyBackdrop: alt. for brighten backdrop
	  bg = "#21222C",
        },
      },
    })
    vim.cmd("colorscheme dracula")
  end
}
