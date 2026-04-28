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
                { '<leader>t', group = 'terminal' },
                { '<leader>g', group = 'git' },
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
