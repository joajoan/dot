return {
  "f-person/git-blame.nvim",
  event = { "BufNewFile", "BufReadPost" },
  opts = {
    date_format = "%Y-%m-%d %H:%M:%S",
    delay = 0,
    message_when_not_committed = "",
    highligt_group = "CursorLine",
    set_extmark_options = { hl_mode = "combine" },
  },
}
