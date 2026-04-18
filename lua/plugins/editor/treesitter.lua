return {
    "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    lazy = false,
    config = function()
        require('nvim-treesitter').setup({
            ensure_installed = {
                'lua',
                'python',
                'vimdoc',
                'vim',
                'regex',
                'dockerfile',
                'json',
                'go',
                'gitignore',
                'yaml',
                'markdown',
                'markdown_inline',
                'bash',
            },
            auto_install = true,
            highlight = { enable = true, },
            indent = { enable = true, },
        })
    end,
}
