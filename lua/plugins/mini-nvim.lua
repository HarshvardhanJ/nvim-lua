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
    require("mini.git").setup()
    require("mini.ai").setup({
      custom_textobjects = {
        -- "o" for whole buffer
        o = function()
          local from = { line = 1, col = 1 }
          local last_line = vim.fn.line("$")
          local last_col = math.max(vim.fn.getline(last_line):len(), 1)
          local to = { line = last_line, col = last_col }
          return { from = from, to = to }
        end,
      },
    })

  end,
}
