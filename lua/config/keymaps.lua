-- lua/config/keymaps.lua

-- Utility function for mapping keys
local map = function(mode, keys, command, desc)
	vim.keymap.set(mode, keys, command, { noremap = true, silent = true, desc = desc })
end

-- Normal mode mappings
map("n", "<Space>", "zz", "Center screen on cursor")
map("n", "<C-x>", ":bnext<CR>", "Next buffer")
map("n", "<C-z>", ":bprevious<CR>", "Previous buffer")
map("n", "<C-a>", "<cmd>Neotree toggle<CR>", "Toggle file tree")

-- Other convenient mappings
map("n", "Y", "y$", "Yank to end of line (like D/C)")
map("n", "n", "nzzzv", "Next search result centered")
map("n", "N", "Nzzzv", "Previous search result centered")
map("n", "J", "mzJ`z", "Join lines without moving cursor")
map("i", "jk", "<Esc>", "Exit insert mode quickly")

-- Save and quit shortcuts
map("n", "<Leader>w", ":w<CR>", "Save file")
map("n", "<Leader>q", ":q<CR>", "Quit")
