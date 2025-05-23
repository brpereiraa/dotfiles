local plugins = {
  {"catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
      'nvim-telescope/telescope.nvim', tag = '0.1.8',
      dependencies = { 'nvim-lua/plenary.nvim' }
  }
}

require("lazy").setup(plugins, opts)
