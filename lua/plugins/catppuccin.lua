return {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,

    config = function()
        require("catppuccin").setup({
            transparent_background = false,

            integrations = {
                telescope = true,
                treesitter = true,
                native_lsp = {
                    enabled = true,
                },
                neo_tree = true,
                which_key = true,
                noice = true,
                gitsigns = true,
                cmp = true,
            },
        })

        vim.cmd.colorscheme("catppuccin")
    end,
}
