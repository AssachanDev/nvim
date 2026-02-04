return {
	"benlubas/molten-nvim",
	build = ":UpdateRemotePlugins",
	init = function()
		-- แนะนำให้ใส่ตัวเลือกการแสดงผลพื้นฐานไว้ที่นี่
		vim.g.molten_image_provider = "none" -- เปลี่ยนเป็น "kitty" ถ้าคุณใช้ kitty
		vim.g.molten_output_win_max_height = 12
		vim.g.molten_virt_text_output = true
	end,
	config = function()
		-- ปุ่มลัด
		vim.keymap.set("n", "<leader>mi", ":MoltenInit<CR>", { desc = "Initialize Molten" })
		vim.keymap.set("n", "<leader>me", ":MoltenEvaluateLine<CR>", { desc = "Evaluate Line" })
		vim.keymap.set("v", "<leader>me", ":<C-u>MoltenEvaluateVisual<CR>", { desc = "Evaluate Visual" })
		vim.keymap.set("n", "<leader>mo", ":MoltenOutputWindow<CR>", { desc = "Show Output Window" })
	end,
}
