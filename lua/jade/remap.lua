vim.g.mapleader = " "
vim.keymap.set("n", "<C-f>", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- move selected text down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- move selected text up

vim.keymap.set("n", "<C-d>", "<C-d>zz")  -- half page down
vim.keymap.set("n", "<C-u>", "<C-u>zz")  -- half page up

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
