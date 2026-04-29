return {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",
    opts = {
        hide_target_hack = true,
    },
    specs = {
        {
            "nvim-mini/mini.animate",
            optional = true,
            opts = {
                cursor = { enabled = false },
            },
        },
    },
}
