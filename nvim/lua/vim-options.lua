vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

vim.api.nvim_set_option("clipboard", "unnamed")

local opt = vim.opt

opt.number = true
opt.relativenumber = true
