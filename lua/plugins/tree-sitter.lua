return{
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter").setup({
			ensure_installed = {"all"},
			auto_install = true,
			highlight = {
				enable = true,
			}
		})
	end
}
