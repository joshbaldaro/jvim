return {
    "nvim-mini/mini.indentscope",
    event = "VeryLazy",
    config = function()
        require('mini.indentscope').setup()
    end,
}
