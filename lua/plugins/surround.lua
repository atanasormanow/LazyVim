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
    },
  },
}
