return{
  'nanozuki/tabby.nvim',
  -- event = 'VimEnter', -- if you want lazy load, see below
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
	  require("tabby").setup({
		  tabline = require("tabby.presets").tab_only,
	  })
  end,
  keys = {
	  {"<leader>tn","<cmd>tabnew<cr>"},
	  {"<leader>tq","<cmd>tabclose<cr>"},
	  {"<C-l>","<cmd>tabn<cr>"},
	  {"<C-h>","<cmd>tabp<cr>"}
  },
}
