-- Manipulate surrounding characters
return {
  "nvim-mini/mini.surround",
  opts = {
    mappings = {
      add = "S", -- Add surrounding in Normal and Visual modes
      delete = "ds", -- Delete surrounding
      replace = "cs", -- Replace surrounding
      find = ")", -- Find surrounding (to the right)
      find_left = "(", -- Find surrounding (to the left)
      -- highlight = "gsh", -- Highlight surrounding
      -- update_n_lines = "gsn", -- Update `n_lines`
    },
  },
}
