vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

vim.keymap.set('n', '<leader>e', ':Neotree<CR>', { desc = 'Open File Explorer', noremap = true, silent = true })

local Snacks = require('snacks')

vim.keymap.set("n", "<leader>tt", function()
  Snacks.terminal()
end, { desc = "Terminal" })

vim.keymap.set("n", "<leader>tf", function()
  Snacks.terminal({ cwd = vim.fn.expand("%:p:h") })
end, { desc = "Terminal (file dir)" })

-- Buffers
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>x', ':Bdelete!<CR>', opts)
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts)

-- Create / Close Splits
vim.keymap.set('n', '<leader>v', '<C-w>v', { desc = 'Create Vertical Split' })
vim.keymap.set('n', '<leader>h', '<C-w>s', { desc = 'Create Horizontal Split' })
vim.keymap.set('n', '<leader>xs', ':close<CR>', { desc = 'Close Split' })

-- Navigate Splits
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Toggle Line Wrap
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Diagnostics
vim.keymap.set('n', '[d', function()
    vim.diagnostic.jump { count = -1, float = true }
end, { desc = 'Go to previous diagnostic message' })

vim.keymap.set('n', ']d', function()
    vim.diagnostic.jump { count = 1, float = true }
end, { desc = 'Go to next diagnostic message' })

vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Git-related Binds
local gs = require('gitsigns')
vim.keymap.set('n', '<leader>ghn', gs.next_hunk, { desc = 'Next git hunk' })
vim.keymap.set('n', '<leader>ghp', gs.prev_hunk, { desc = 'Previous git hunk' })
vim.keymap.set('n', '<leader>ghs', gs.stage_hunk, { desc = 'Stage hunk' })
vim.keymap.set('n', '<leader>ghr', gs.reset_hunk, { desc = 'Reset hunk' })
vim.keymap.set('n', '<leader>ghS', gs.stage_buffer, { desc = 'Stage buffer' })
vim.keymap.set('n', '<leader>ghR', gs.reset_buffer, { desc = 'Reset buffer' })
vim.keymap.set('n', '<leader>ghP', gs.preview_hunk, { desc = 'Preview hunk' })
vim.keymap.set('n', '<leader>ghb', gs.blame_line, { desc = 'Blame line' })
vim.keymap.set('n', '<leader>ghd', gs.diffthis, { desc = 'Diff this file' })
vim.keymap.set('n', '<leader>ght', gs.toggle_current_line_blame, { desc = 'Toggle inline blame' })

vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = 'Git status (fugitive)' })

vim.keymap.set('n', '<leader>gc', ':Git commit<CR>', { desc = 'Git commit' })
vim.keymap.set("n", "<leader>gC", function()
    vim.ui.input({ prompt = "Commit message: " }, function(msg)
        if not msg or msg == "" then return end
        vim.cmd("Git commit -m " .. vim.fn.shellescape(msg))
    end)
end, { desc = "Git commit (quick message)" })

vim.keymap.set("n", "<leader>gp", ":Git push<CR>", { desc = "Git push" })
vim.keymap.set("n", "<leader>gP", ":Git pull<CR>", { desc = "Git pull" })
vim.keymap.set("n", "<leader>ga", ":Git add %<CR>", { desc = "Git add current file" })

vim.keymap.set("n", "<leader>gl", "<cmd>LazyGit<CR>", { desc = "LazyGit" })

