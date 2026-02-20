return {
  -- Auto-close brackets
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  -- Better commenting (gcc to comment line, gc to comment selection)
  {
    "numToStr/Comment.nvim",
    opts = {},
    event = "VeryLazy",
  },
  -- Add/Delete/Replace surroundings (sa, sd, sr)
  {
    "echasnovski/mini.surround",
    opts = {},
    event = "VeryLazy",
  },
}
