return {
  "jpalardy/vim-slime",
  config = function()
    vim.g.slime_target = "tmux"
    
    vim.g.slime_paste_file = os.getenv("HOME") .. "/.slime_paste"
    
    vim.keymap.set("n", "<leader>sl", "<Plug>SlimeParagraphSend", { desc = "Send paragraph to Slime" })
    vim.keymap.set("x", "<leader>sl", "<Plug>SlimeRegionSend", { desc = "Send selection to Slime" })
  end,
}               
