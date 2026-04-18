return {
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

  -- position the snacks explorer on the right
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = { preset = "right" },
          },
        },
      },
    },
  },
}
