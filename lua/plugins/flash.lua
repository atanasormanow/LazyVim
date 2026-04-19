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
