return{
	"declancm/cinnamon.nvim",
	disable = true,
	config = function()
		require("cinnamon").setup({
			keymaps = {
				basic = true,
				extra = true,
			},
			options = {
				mode = "cursor",
				delay = 5,
				max_delta = {
					line = false,
					column = false,
					time = 1000,
				},
				step_size = {
					vertical = 100,
					horizontal = 2,
				},
			},
		})
	end
}
