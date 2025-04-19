return{
	"andweeb/presence.nvim",
	config = function()
		require("presence").setup({
			auto_update = true,
			neovim_image_text = "Trusted By Wizards Everywhere",
			main_image = "file",
			enable_line_number = true,
			show_time = true,
		})
	end
}
