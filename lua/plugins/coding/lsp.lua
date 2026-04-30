return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.config("pyright", {})
        vim.lsp.enable("pyright")

        vim.lsp.config("ruff", {})
        vim.lsp.enable("ruff")

        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file("", true),
                        checkThirdParty = false,
                    },
                },
            },
        })
        vim.lsp.enable("lua_ls")

        vim.lsp.config("jsonls", {})
        vim.lsp.enable("jsonls")

        vim.lsp.config("yamlls", {})
        vim.lsp.enable("yamlls")

        vim.lsp.config("marksman", {})
        vim.lsp.enable("marksman")

        vim.lsp.config("bashls", {})
        vim.lsp.enable("bashls")
    end,
}
