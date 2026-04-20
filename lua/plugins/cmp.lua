-- Autocompletion
return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- Keep the "enter" preset
      preset = "enter",

      -- Navigate suggestions list
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
