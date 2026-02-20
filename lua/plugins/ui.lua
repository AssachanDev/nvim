return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			flavour = "mocha",
			transparent_background = true,
			integrations = {
				cmp = true,
				gitsigns = true,
				nvimtree = true,
				treesitter = true,
				notify = true,
				noice = true,
				telescope = { enabled = true },
				indent_blankline = { enabled = true },
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "undercurl" },
						hints = { "undercurl" },
						warnings = { "undercurl" },
						information = { "undercurl" },
					},
				},
			},
		},
		config = function(_, opts)
			require("catppuccin").setup(opts)
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		opts = {
			window = {
				width = 30,
			},
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
				},
			},
		},
	},

	-- Modern UI for vim.ui.select and vim.ui.input
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
		opts = {},
	},

	-- Indent guides
	{
		"lukas-reineke/indent-blankline.nvim",
		event = "VeryLazy",
		main = "ibl",
		opts = {
			indent = { char = "▏" },
			scope = { enabled = true, show_start = false, show_end = false },
		},
	},

	{
		"goolord/alpha-nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			local alpha = require("alpha")
			local dashboard = require("alpha.themes.dashboard")

			local header = {
				"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
				"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
				"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
				"██║╚██╗██║██╔══╝  ██║   ██║██║   ██║██║██║╚██╔╝██║",
				"██║ ╚████║███████╗╚██████╔╝╚██████╔╝██║██║ ╚═╝ ██║",
				"╚═╝  ╚═══╝╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝     ╚═╝",
				"                                          _.oo. ",
				"                 _.u[[/;:,.          .odMMMMMM' ",
				"              .o888UU[[[/;:-.  .o@P^   MMM^     ",
				"             oN88888UU[[[/;::-.        dP^      ",
				"            dNMMNN888UU[[[/;:--.   .o@P^        ",
				"           ,MMMMMMN888UU[[/;::-. o@^            ",
				"           NNMMMNN888UU[[[/~.o@P^               ",
				"           888888888UU[[[/o@^-..                ",
				"          oI8888UU[[[/o@P^:--..                 ",
				"        .@^  YUU[[[/o@^;::---..                 ",
				"      oMP     ^/o@P^;:::---..                   ",
				"   .dMMM    .o@^ ^;::---...                     ",
				"  dMMMMMMM@^`       `^^^^                       ",
				" YMMMUP^                                        ",
			}

			dashboard.section.header.val = header

			dashboard.section.buttons.val = {
				dashboard.button("f", "  Find File", ":Telescope find_files <CR>"),
				dashboard.button("n", "  New File", ":ene <BAR> startinsert <CR>"),
				dashboard.button("r", "  Recent Files", ":Telescope oldfiles <CR>"),
				dashboard.button("g", "󰊄  Find Text", ":Telescope live_grep <CR>"),
				dashboard.button("y", "󰇥  Yazi (FileManager)", ":Yazi<CR>"),
				dashboard.button("l", "󰒲  Lazy (Plugins)", ":Lazy<CR>"),
				dashboard.button("q", "󰩈  Quit", ":qa<CR>"),
			}

			local stats = require("lazy").stats()
			local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
			dashboard.section.footer.val = "󱐋 Loaded " .. stats.count .. " plugins in " .. ms .. "ms"

			alpha.setup(dashboard.opts)
		end,
	},

	-- Smooth animations for cursor, scroll, and window opens
	{
		"echasnovski/mini.animate",
		event = "VeryLazy",
		opts = {
			cursor = { enable = false }, -- Set to true if you want a "sliding" cursor
			scroll = { enable = true },
			resize = { enable = true },
			open = { enable = true },
			close = { enable = true },
		},
	},
}
