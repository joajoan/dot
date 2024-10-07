-- Disable non-interactive execution. 
vim.keymap.set("n", "Q", "<nop>")

-- Move visual selection on navigation.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "H", "<gv")
vim.keymap.set("v", "L", ">gv")

-- Center on navigation.
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Center on next word.
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Restart LSP.
vim.keymap.set("n", "<leader>rs", "<cmd>LspRestart<cr>")

-- Search and replace hovered word.
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- System clipboard shortcuts.
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])

-- Delete into void register. 
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Replace visual selection.
vim.keymap.set("x", "<leader>p", [["_dP]])
