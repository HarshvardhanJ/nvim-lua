return {
    "rcarriga/nvim-notify",

    config = function()
        require("notify").setup({
            timeout = 8000,
            max_width = 80,
            render = "wrapped-default",
            stages = "fade",
        })

        vim.notify = require("notify")
    end,
}
