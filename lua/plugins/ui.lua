return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
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
  },

  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
"███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
"████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
"██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
"██║╚██╗██║██╔══╝  ██║   ██║██║   ██║██║██║╚██╔╝██║",
"██║ ╚████║███████╗╚██████╔╝╚██████╔╝██║██║ ╚═╝ ██║",
"╚═╝  ╚═══╝╚══════╝ ╚═════╝  ╚═════╝ ╚═╝╚═╝     ╚═╝",
'                                          _.oo. ',
"                 _.u[[/;:,.          .odMMMMMM' ",
'              .o888UU[[[/;:-.  .o@P^   MMM^     ',
'             oN88888UU[[[/;::-.        dP^      ',
'            dNMMNN888UU[[[/;:--.   .o@P^        ',
'           ,MMMMMMN888UU[[/;::-. o@^            ',
'           NNMMMNN888UU[[[/~.o@P^               ',
'           888888888UU[[[/o@^-..                ',
'          oI8888UU[[[/o@P^:--..                 ',
'        .@^  YUU[[[/o@^;::---..                 ',
'      oMP     ^/o@P^;:::---..                   ',
'   .dMMM    .o@^ ^;::---...                     ',
"  dMMMMMMM@^`       `^^^^                       ",
' YMMMUP^                                        ',
}



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
}
