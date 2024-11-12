return {
	"gbprod/substitute.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local substitute = require("substitute")

		local mappings = {
			{ mode = "n", keys = "s", action = substitute.operator, desc = "Substitute with motion" },
			{ mode = "n", keys = "ss", action = substitute.line, desc = "Substitute line" },
			{ mode = "n", keys = "S", action = substitute.eol, desc = "Substitute to end of line" },
			{ mode = "x", keys = "s", action = substitute.visual, desc = "Substitute in visual mode" },
		}

		for _, map in ipairs(mappings) do
			vim.keymap.set(map.mode, map.keys, map.action, { desc = map.desc })
		end

		substitute.setup()
	end,
}
