return {
  --------------
  -- Disabled --
  --------------

  -- default theme
  { "folke/tokyonight.nvim", enabled = false },

  -------------
  -- Enabled --
  -------------

  -- Use gruvbox theme
  { "ellisonleao/gruvbox.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- show "scope"" context at the top
  { "nvim-treesitter/nvim-treesitter-context" },
}
