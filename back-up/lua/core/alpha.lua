local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- ASCII art for the header
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

-- Menu buttons
dashboard.section.buttons.val = {
    dashboard.button("f", "󰈞  Find file", function() require("telescope.builtin").find_files() end),
    dashboard.button("n", "  New file", ":enew <CR>"),
    dashboard.button("p", "  Projects", function() require("telescope").extensions.project.project() end),
    dashboard.button("h", "󰗖  help", function() require("telescope.builtin").help_tags() end),
    dashboard.button("r", "  Recently used files", function() require("telescope.builtin").oldfiles() end),
    dashboard.button("t", "  Find text", function() require("telescope.builtin").live_grep() end),
    dashboard.button("q", "  Quit", ":qa <CR>"),
}

local config = {
  layout = {
    { type = "padding", val = 2 }, 
    dashboard.section.header,      
    { type = "padding", val = 2 }, 
    dashboard.section.buttons,     
  },
}
return config
