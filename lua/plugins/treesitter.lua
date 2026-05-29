return {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
        ensure_installed = {
            "lua",
            "vim",
            "vimdoc",

            "python",

            "javascript",
            "typescript",
            "tsx",

            "vue",

            "html",
            "css",
            "scss",

            "json",
            "yaml",

            "bash",

            "c",
            "cpp",

            "rust",
        },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
