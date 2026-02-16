-- Set <Leader> to comma (`,`), matching the old Vim config leader
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- LazyVim bootstraps lazy.nvim and loads config/* and plugins/*
require("config.lazy")
