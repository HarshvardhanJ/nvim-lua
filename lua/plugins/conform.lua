return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            python = { "ruff_format" },

            javascript = { "prettier" },
            typescript = { "prettier" },
            vue = { "prettier" },

            css = { "prettier" },
            html = { "prettier" },

            lua = { "stylua" },
        },

        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        },
    },
}
