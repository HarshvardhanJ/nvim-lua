local opt = vim.opt

-- UI
opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.showcmd = true
opt.showmatch = true
opt.hlsearch = true
opt.termguicolors = true

-- Borders
vim.o.winborder = "rounded"

-- Encoding
opt.encoding = "utf-8"

-- Indentation
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.autoindent = true
opt.smartindent = true
opt.smarttab = true

-- Clipboard
opt.clipboard = "unnamedplus"

-- Better splits
opt.splitright = true
opt.splitbelow = true

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

-- Sign column (prevents text shifting)
opt.signcolumn = "yes"

-- Faster updates
opt.updatetime = 250

-- Completion experience
opt.completeopt = { "menu", "menuone", "noselect" }

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Window Left" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Window Down" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Window Up" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Window Right" })

-- Clear search highlights
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Terminal settings
vim.api.nvim_create_autocmd("TermOpen", {
    group = vim.api.nvim_create_augroup("custom-term-open", { clear = true }),
    callback = function()
        vim.opt_local.number = false
        vim.opt_local.relativenumber = false
    end,
})
