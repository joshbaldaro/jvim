return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.config("pyright", {})
        vim.lsp.enable("pyright")

        vim.lsp.config("jsonls", {})
        vim.lsp.enable("jsonls")

        vim.lsp.config("yamlls", {})
        vim.lsp.enable("yamlls")

        vim.lsp.config("marksman", {})
        vim.lsp.enable("marksman")
    end,
}
