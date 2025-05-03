return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  keys = {
	  {"<leader>td","<cmd>NvimTreeToggle<cr>"},
	  {"<leader>cd","<cmd>NvimTreeFindFile<cr>"},
  },
  config = function()
    require("nvim-tree").setup {}
  end,
}
