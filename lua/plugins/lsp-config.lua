return {
    "neovim/nvim-lspconfig",

    config = function()
        local capabilities =
            require("blink.cmp").get_lsp_capabilities()

        local on_attach = function(_, bufnr)
            local map = function(mode, lhs, rhs, desc)
                vim.keymap.set(mode, lhs, rhs,
                    { buffer = bufnr, desc = desc })
            end

            map("n", "K", vim.lsp.buf.hover, "Hover")
            map("n", "gd", vim.lsp.buf.definition, "Definition")
            map("n", "gr", vim.lsp.buf.references, "References")
            map("n", "gi", vim.lsp.buf.implementation, "Implementation")

            map("n", "<leader>ca", vim.lsp.buf.code_action, "Code Action")
            map("n", "<leader>rn", vim.lsp.buf.rename, "Rename")
            map("n", "<leader>lf", vim.lsp.buf.format, "Format")
        end

        local servers = {
            lua_ls = {},

            pyright = {
                settings = {
                    python = {
                        analysis = {
                            autoSearchPaths = true,
                            useLibraryCodeForTypes = true,
                            diagnosticMode = "workspace",
                            typeCheckingMode = "basic",
                            autoImportCompletions = true,
                        },
                    },
                },
            },

            ruff = {},
            volar = {},
            ts_ls = {},
            cssls = {},
            clangd = {},
            rust_analyzer = {},
        }

        for name, cfg in pairs(servers) do
            cfg.capabilities = capabilities
            cfg.on_attach = on_attach

            vim.lsp.config(name, cfg)
            vim.lsp.enable(name)
        end
    end,
}
