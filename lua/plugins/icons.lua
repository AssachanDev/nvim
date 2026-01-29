return {
  "nvim-tree/nvim-web-devicons",
  lazy = false, 
  config = function()
    require("nvim-web-devicons").setup({
      override = {
        py = {
          icon = "",
          color = "#ffd43b",
          cterm_color = "220",
          name = "Py",
        },
      },
      color_icons = true,
      default = true,
    })
  end,
}
