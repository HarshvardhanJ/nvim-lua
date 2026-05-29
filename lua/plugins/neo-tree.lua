return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },

    opts = {
        window = {
            width = 35,
        },

        filesystem = {
            filtered_items = {
                hide_dotfiles = false,
                hide_gitignored = true,
            },
        },
    },

    config = function(_, opts)
        require("neo-tree").setup(opts)

        vim.keymap.set(
            "n",
            "<leader>e",
            ":Neotree filesystem reveal left<CR>",
            { desc = "Explorer" }
        )
    end,
}
