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

  -- easy preview for markdown files
  { "iamcco/markdown-preview.nvim" },
}
