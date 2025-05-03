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


  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tender",
    },
  }
}
