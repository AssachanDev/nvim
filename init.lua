local ts = vim.treesitter
if ts.language and not ts.language.ft_to_lang then
	ts.language.ft_to_lang = function(ft)
		local lang = ts.get_lang(ft)
		return lang or ft
	end
end

vim.opt.updatetime = 3000

require("config.options")
require("config.keymaps")
require("config.lazy")
