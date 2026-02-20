return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern", -- Clean, modern look
    spec = {
      { "<leader>f", group = "Find (Telescope)" },
      { "<leader>p", group = "PlatformIO" },
      { "<leader>m", group = "Molten (Python REPL)" },
      { "<leader>g", group = "Git / Diffview" },
      { "<leader>s", group = "Slime (REPL)" },
      { "<leader>y", group = "Yazi (File Manager)" },
      { "<leader>c", group = "Code / LSP" },
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
