return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"mfussenegger/nvim-dap-python",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			dapui.setup()

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end
			local mason_path = vim.fn.stdpath("data") .. "/mason/packages/debugpy/venv/bin/python"
			require("dap-python").setup(mason_path)

			vim.keymap.set("n", "<F5>", function()
				dap.continue()
			end, { desc = "Start/Continue Debugging" })
			vim.keymap.set("n", "<F10>", function()
				dap.step_over()
			end, { desc = "Step Over" })
			vim.keymap.set("n", "<F11>", function()
				dap.step_into()
			end, { desc = "Step Into" })
			vim.keymap.set("n", "<leader>b", function()
				dap.toggle_breakpoint()
			end, { desc = "Toggle Breakpoint" })
		end,
	},
}
