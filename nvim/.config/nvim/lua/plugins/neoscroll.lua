return {
  "karb94/neoscroll.nvim",
  config = function ()
    require('neoscroll').setup({
      mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>', 'zt', 'zz', 'zb' },
      easing='sine',
    })
    local neoscroll = require('neoscroll')
    local keymap = {
      ["<C-u>"] = function() neoscroll.ctrl_u({ duration = 180 }) end;
      ["<C-d>"] = function() neoscroll.ctrl_d({ duration = 180 }) end;
      ["<C-b>"] = function() neoscroll.ctrl_b({ duration = 320 }) end;
      ["<C-f>"] = function() neoscroll.ctrl_f({ duration = 320 }) end;
      ["zt"] = function() neoscroll.zt({ half_win_duration = 180 }) end;
      ["zz"] = function() neoscroll.zz({ half_win_duration = 120 }) end;
      ["zb"] = function() neoscroll.zb({ half_win_duration = 180 }) end;
    }
    local modes = { 'n', 'v', 'x' }
    for key, func in pairs(keymap) do
      vim.keymap.set(modes, key, func)
    end
  end
}
