---- Options ----

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.wrap = false
vim.opt.smartindent = true

local tabwidth = 4
vim.opt.tabstop = tabwidth
vim.opt.softtabstop = tabwidth
vim.opt.shiftwidth = tabwidth
vim.opt.expandtab = true

vim.opt.smartcase = true
vim.opt.ignorecase = true

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = vim.fn.stdpath("data") .. "/undodir"
vim.opt.undofile = true

vim.opt.colorcolumn = "80"
vim.opt.signcolumn = "yes"

vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    callback = function()
        vim.hl.on_yank()
    end,
})

---- Keymaps ----

vim.g.mapleader = " "

vim.keymap.set("n", "<Esc>", ":nohl<CR>", { desc = "Clear search highlighting", silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })
