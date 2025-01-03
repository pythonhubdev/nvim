return {
	"pieces-app/plugin_neovim",
	config = function()
		require("pieces.config").host = "http://localhost:1000"
	end,
}
