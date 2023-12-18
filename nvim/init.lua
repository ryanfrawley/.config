local opt = vim.opt
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smarttab = true

-- Use system clipboard
vim.api.nvim_set_option("clipboard","unnamed")

-- Lazy.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

-- Split pane navigation
vim.api.nvim_set_keymap('n', '<c-k>', ":wincmd k<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<c-j>', ":wincmd j<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<c-h>', ":wincmd h<CR>", { noremap = true, silent = true });
vim.api.nvim_set_keymap('n', '<c-l>', ":wincmd l<CR>", { noremap = true, silent = true });

require("lazy").setup("plugins")

require("current-theme")
