vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

local Snacks = require('snacks')

vim.keymap.set("n", "<leader>tt", function()
  Snacks.terminal()
end, { desc = "Terminal" })

vim.keymap.set("n", "<leader>tf", function()
  Snacks.terminal({ cwd = vim.fn.expand("%:p:h") })
end, { desc = "Terminal (file dir)" })

