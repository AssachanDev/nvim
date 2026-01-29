return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewClose" },
  keys = {
    { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git Diff Open" },
    { "<leader>gx", "<cmd>DiffviewClose<cr>", desc = "Git Diff Close" },
  },
}
