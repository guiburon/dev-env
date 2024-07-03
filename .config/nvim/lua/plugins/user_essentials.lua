local plugins = {
  --- line wrapping (toggle with keys: yow) ---
  {
    "andrewferrier/wrapping.nvim",
    config = function()
      require("wrapping").setup()
    end,
  },

  --- toggle comment ---
  {
    "numToStr/Comment.nvim",
    opts = {
      -- add any options here
    },
    lazy = false,
  },

  --- REPL ---
  -- {
  --   "Olical/conjure",
  -- },
}

return plugins
