return {
  --------------
  -- Disabled --
  --------------

  -- the default theme
  { "folke/tokyonight.nvim", enabled = false },

  -- jump on search matches
  { "folke/flash.nvim", enabled = false },

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

  -- manipulate surrounding pairs
  { "kylechui/nvim-surround" },

  -- easy preview for markdown files
  { "iamcco/markdown-preview.nvim" },

  -- a simple solution for commenting
  { "preservim/nerdcommenter" },
}
