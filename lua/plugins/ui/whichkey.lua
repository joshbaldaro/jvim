return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts_extend = { "spec" },
    opts = {
        preset = "helix",
        defaults = {},
        spec = {
            {
                mode = { 'n', 'x' },
                { '<leader>t', group = 'Terminal' },
                { '<leader>g', group = 'Git' },
                { '<leader>gh', group = 'Hunks' },
                { '<leader>l', group = "LSP" },
                { '<leader>f', group = "Telescope"}
            },
        },
    },
    config = function(_, opts)
        local wk = require('which-key')
        wk.setup(opts)
        if not vim.tbl_isempty(opts.defaults) then
            wk.register(opts.defaults)
        end
    end,

}
