return {
	{
		"williamboman/mason.nvim",
		opts = {
			ui = { border = "rounded" },
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		opts = {
			ensure_installed = {
				"basedpyright",
				"lua_ls",
				"rust_analyzer",
				"stylua",
				"black",
				"isort",
				"rustfmt",
			},
		},
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			handlers = {
				function(server_name)
					require("lspconfig")[server_name].setup({})
				end,
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Standard LSP keybindings
			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(ev)
					local opts = { buffer = ev.buf, silent = true }
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to Definition", unpack(opts) })
					vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Hover Docs", unpack(opts) })
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Action", unpack(opts) })
					vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename Symbol", unpack(opts) })
				end,
			})

			vim.diagnostic.config({
				virtual_text = true,
				float = { border = "rounded", source = "always" },
			})

			vim.api.nvim_create_autocmd("CursorHold", {
				callback = function()
					vim.diagnostic.open_float(nil, { focusable = false })
				end,
			})
		end,
	},
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
		},
		config = function()
			local cmp = require("cmp")
			local luasnip = require("luasnip")
			cmp.setup({
				snippet = {
					expand = function(args)
						luasnip.lsp_expand(args.body)
					end,
				},
				mapping = cmp.mapping.preset.insert({
					["<C-j>"] = cmp.mapping.select_next_item(),
					["<C-k>"] = cmp.mapping.select_prev_item(),
					["<CR>"] = cmp.mapping.confirm({ select = true }),
					["<Tab>"] = cmp.mapping(function(fallback)
						if cmp.visible() then
							cmp.select_next_item()
						elseif luasnip.expand_or_jumpable() then
							luasnip.expand_or_jump()
						else
							fallback()
						end
					end, { "i", "s" }),
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
					{ name = "buffer", keyword_length = 3 },
					{ name = "path" },
				}),
			})
		end,
	},
	{ "mrcjkb/rustaceanvim", version = "^5", lazy = false },
}
