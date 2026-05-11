return {
  -- Use gruvbox theme
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      overrides = {
        -- right panel: line-level background for changed lines (green-tinted)
        DiffChange = { bg = "#2e3b1f" },
        -- right panel: inline changed words (brighter green)
        DiffText = { bg = "#4d6827" },
        -- left panel: line-level background for changed lines (red-tinted)
        DiffviewDiffChangeDelete = { bg = "#3c1f1f" },
        -- left panel: line-level background for fully removed lines
        DiffviewDiffAddAsDelete = { bg = "#3c1f1f" },
        -- left panel: inline changed words (brighter red)
        DiffviewDiffTextDelete = { bg = "#6b2e2e" },
        -- filler lines (dimmed)
        DiffviewDiffDeleteDim = { fg = "#5c4a4a" },
      },
    },
  },
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
