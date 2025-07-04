return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require('blink.cmp').get_lsp_capabilities()
        local lspconfig = require("lspconfig")
        local on_attach = require("plugins.lsp-config").on_attach

        local function which_python()
            local f = io.popen('env which python', 'r') or error("Fail to execute 'env which python'")
            local s = f:read('*a') or error("Fail to read from io.popen result")
            f:close()
            return string.gsub(s, '%s+$', '')
        end

        lspconfig.lua_ls.setup({ capabilities = capabilities })
        lspconfig.cssls.setup({ capabilities = capabilities })
        lspconfig.rust_analyzer.setup({ capabilities = capabilities })
        lspconfig.clangd.setup({ capabilities = capabilities })
        lspconfig.pylsp.setup({
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                pylsp = {
                    plugins = {
                        jedi = { environment = which_python() },
                    }
                }
            }
        })

        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end
}

