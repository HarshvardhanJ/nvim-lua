local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

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


vim.api.nvim_create_autocmd('TermOpen', {

group = vim.api.nvim_create_augroup('custom-term-open', { clear = true }),
callback = function()
  vim.opt.number = false
  vim.opt.relativenumber = false
end,
})
-- opens the terminal 
vim.keymap.set("n", "<leader>k", function()
  -- Get the directory of the current file
  local current_file = vim.fn.expand('%:p')
  local current_dir = vim.fn.fnamemodify(current_file, ':h')
  
  -- Open a new vertical split and move to the bottom
  vim.cmd.vnew()
  vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 7)
  
  -- Open terminal in the current file's directory
  vim.fn.termopen(vim.o.shell, {cwd = current_dir})
  vim.cmd('startinsert')
end)

vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

require("lazy").setup("plugins")
require("vim-options")
