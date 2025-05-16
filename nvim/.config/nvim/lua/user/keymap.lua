-- Disable non-interactive execution.
vim.keymap.set("n", "Q", "<nop>")

-- Move visual selection on navigation.
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "H", "<gv")
vim.keymap.set("v", "L", ">gv")

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

-- Diagnostics.
vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)

-- Equate cancel to escape.
vim.keymap.set({"i", "n"}, "<C-c>", "<Esc>")

-- Insert new line without mode change.
vim.keymap.set('n', 'o', 'o<Esc>', { silent = true })
vim.keymap.set('n', 'O', 'O<Esc>', { silent = true })

-- Center on cursor when navigating.
vim.keymap.set({"n", "v"}, "<C-f>", "<C-f>zz", { remap = true })
vim.keymap.set({"n", "v"}, "<C-b>", "<C-b>zz", { remap = true })
vim.keymap.set({"n", "v"}, "<C-u>", "<C-u>zz", { remap = true })
vim.keymap.set({"n", "v"}, "<C-d>", "<C-d>zz", { remap = true })
vim.keymap.set({"n", "v"}, "gg", "ggzt", { remap = true })
vim.keymap.set({"n", "v"}, "G", "Gzb", { remap = true })
