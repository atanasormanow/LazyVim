-- powerful git interface
return {
  {
    "NeogitOrg/neogit",
    lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional
      "m00qek/baleia.nvim", -- optional
      "folke/snacks.nvim", -- optional
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
    },
  },
  {
    "sindrets/diffview.nvim",
    opts = {
      enhanced_diff_hl = true,
      hooks = {
        diff_buf_win_enter = function(bufnr, winid, ctx)
          if ctx.symbol == "a" then
            -- Left panel (old/removed side): use red-tinted inline highlight
            vim.api.nvim_set_option_value(
              "winhighlight",
              "DiffAdd:DiffviewDiffAddAsDelete,DiffDelete:DiffviewDiffDeleteDim,DiffChange:DiffviewDiffChangeDelete,DiffText:DiffviewDiffTextDelete",
              { win = winid }
            )
          end
        end,
      },
    },
  },
}
