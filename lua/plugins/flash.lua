-- Set jump marker colors when the colorscheme is applied
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("flash_colors", { clear = true }),
  callback = function()
    vim.api.nvim_set_hl(0, "FlashLabel", { fg = "#000000", bg = "#00ff00", bold = true })
  end,
})

return {
  "folke/flash.nvim",
  keys = {

    -- Search and display jump markers
    {
      "<leader>F",
      mode = { "n", "x", "o" },
      function()
        require("flash").jump()
      end,
      desc = "Flash",
    },

    -- Disable all default keymaps
    { "s", mode = { "n", "x", "o" }, false },
    { "S", mode = { "n", "o", "x" }, false },
    { "r", mode = "o", false },
    { "R", mode = { "o", "x" }, false },
    { "<c-s>", mode = { "c" }, false },
    { "<c-space>", mode = { "n", "o", "x" }, false },
  },
}
