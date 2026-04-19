-- Autocompletion
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- Keep the "enter" preset (Enter still works)
      preset = "enter",

      -- Navigate suggestions with CTRL+J/K
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },

      -- accept suggestion
      ["<C-l>"] = { "select_and_accept" },
    },
    completion = {
      menu = {
        border = "single",
      },
      documentation = {
        window = {
          border = "single",
        },
      },
    },
  },
}
