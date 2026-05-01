require 'core.options'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        error('Error cloning lazy.nvim:\n' .. out)
    end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    require 'plugins.colortheme',
    require 'plugins.neotree',
    require 'plugins.telescope',
    
    require 'plugins.utils.gitsigns',
    require 'plugins.utils.fugitive',
    require 'plugins.utils.lazygit',

    require 'plugins.ui.bufferline',
    require 'plugins.ui.snacks',
    require 'plugins.ui.whichkey',
    require 'plugins.ui.lualine',
    require 'plugins.ui.noice',
    require 'plugins.ui.mini-icons',
    require 'plugins.ui.mini-animate',
    require 'plugins.ui.mini-indentscope',
    require 'plugins.ui.smear-cursor',
    
    require 'plugins.editor.treesitter',
    require 'plugins.editor.todo',
    require 'plugins.editor.neotest',

    require 'plugins.coding.mini-pairs',
    require 'plugins.coding.lsp',
    require 'plugins.coding.mason',
    require 'plugins.coding.completions',
    require 'plugins.coding.venv-selector',
    require 'plugins.coding.package-ui',
})

require 'core.keymaps'
