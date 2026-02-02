-- [[ แก้บั๊ก Telescope สำหรับ Neovim 0.10+ ]]
local ts = vim.treesitter
if ts.language and not ts.language.ft_to_lang then
    ts.language.ft_to_lang = function(ft)
        local lang = ts.get_lang(ft)
        return lang or ft
    end
end

-- [[ ตั้งค่าความเร็วระบบ ]]
vim.opt.updatetime = 300 -- ทำให้หน้าต่าง Error เด้งไวขึ้น (0.3 วินาที)

-- [[ เรียกใช้ Config อื่นๆ ]]
require("config.options")
require("config.keymaps")
require("config.lazy")
