return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "jacoborus/tender.vim" },
  { "scottmckendry/cyberdream.nvim" },
  { "olimorris/onedarkpro.nvim" },
  { "patstockwell/vim-monokai-tasty" },
  { "dasupradyumna/midnight.nvim" },
  { "joosepAlviste/palenightfall.nvim" },
  { "AstroNvim/astrotheme" },
  { 
	  "alligator/accent.vim",
	  accent_colour = 'orange',
  },
  { "ntk148v/komau.vim" },
  { "zenbones-theme/zenbones.nvim" },
  { 'huyvohcmc/atlas.vim' },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "komau",
    },
  }
}
