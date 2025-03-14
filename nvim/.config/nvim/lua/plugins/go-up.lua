return {
  "nullromo/go-up.nvim",
  opts = {
    respectSplitkeep = true,
    respectScrolloff = true,
  },
  config = function(_, opts)
    require("go-up").setup(opts)
    vim.api.nvim_create_user_command("CenterScreen", function()
      require("go-up").centerScreen()
    end, { nargs = 0 })
    vim.keymap.set({"n", "v"}, "<C-f>", "<C-f><Cmd>CenterScreen<CR>")
    vim.keymap.set({"n", "v"}, "<C-b>", "<C-b><Cmd>CenterScreen<CR>")
    vim.keymap.set({"n", "v"}, "<C-u>", "<C-u><Cmd>CenterScreen<CR>")
    vim.keymap.set({"n", "v"}, "<C-d>", "<C-d><Cmd>CenterScreen<CR>")
    vim.keymap.set({"n", "v"}, "gg", "gg<Cmd>CenterScreen<CR>")
    vim.keymap.set({"n", "v"}, "G", "G<Cmd>CenterScreen<CR>")
    vim.keymap.set("n", "n", "n<Cmd>CenterScreen<CR>zv")
    vim.keymap.set("n", "N", "N<Cmd>CenterScreen<CR>zv")
  end,
}
