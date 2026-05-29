return {
    "nvim-lualine/lualine.nvim",

    config = function()
        require("lualine").setup({
            options = {
                theme = "auto",
                globalstatus = true,

                component_separators = "",
                section_separators = {
                    left = "",
                    right = "",
                },
            },
        })
    end,
}
