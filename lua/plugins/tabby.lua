return{
	'nanozuki/tabby.nvim',
	dependencies = 'nvim-tree/nvim-web-devicons',
	keys = {
		  {"<leader>nt","<cmd>tabnew<cr>"},
		  {"<leader>qt","<cmd>tabclose<cr>"},
		  {"<C-l>","<cmd>tabn<cr>"},
		  {"<C-h>","<cmd>tabp<cr>"},
		  {"<C-M-l>","<cmd>+tabmove<cr>"},
		  {"<C-M-h>","<cmd>-tabmove<cr>"},
	},
	config=function()
		local theme = {
			fill = 'TabLineFill',
			head = { fg = '#d14f28', bg = '#1c1e26', style = 'italic' },
			current_tab = { fg = '#1c1e26', bg = '#d14f28', style = 'italic' },
			tab = { fg = '#c5cdd9', bg = '#1c1e26', style = 'italic' },
			win = { fg = '#1c1e26', bg = '#d14f28', style = 'italic' },
			tail = { fg = '#d14f28', bg = '#1c1e26', style = 'italic' },
		}
		require('tabby').setup({
			preset = 'active_wins_at_tail',
			line=function(line)
				return {
				{
					{' ', hl = theme.head},
					line.sep('', theme.head, theme.fill),
				},
				line.tabs().foreach(function(tab)
					local hl=tab.is_current() and theme.current_tab or theme.tab
					return {
						line.sep('', hl, theme.fill),
						tab.is_current() and '󰫤' or '󰫥',
						tab.number(),
						tab.name(),
						tab.close_btn(''),
						line.sep('', hl, theme.fill),
						hl = hl,
						margin = ' ',
					}
				end),
				line.spacer(),
				line.wins_in_tab(line.api.get_current_tab()).foreach(function(win)
					return {
						line.sep(' ', theme.win, theme.fill),
						win.is_current() and '󰫤' or '󰫥',
						win.buf_name(),
						line.sep('', theme.win, theme.fill),
						hl = theme.win,
						margin = ' ',
					}
				end),
				{
					line.sep(' ', theme.tail, theme.fill),
					{ ' ', hl = theme.tail },
				},
				hl = theme.fill,
			}
		end,
	})
end
}

