return {
  "echasnovski/mini.nvim",
  version = false, -- use the latest commit
  event = "VeryLazy",
  config = function()

    -- Only load selected modules
    require("mini.pairs").setup()        -- Auto pair brackets
    require("mini.comment").setup()      -- Comment toggling
    require("mini.surround").setup()     -- Surround text objects
    require("mini.move").setup()
    require("mini.ai").setup()

  end,
}
