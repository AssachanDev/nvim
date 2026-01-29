return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" }, -- โหลดเมื่อเริ่มเปิดไฟล์เท่านั้น
  config = function()
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then 
      return 
    end

    configs.setup({
      ensure_installed = { "python", "lua", "vim", "markdown", "bash","rust" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
