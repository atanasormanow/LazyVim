-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- NOTE: Keymaps starting with built-in operators (d, c, y, v, etc.)
-- won't show in WhichKey because Vim enters operator-pending mode
-- before WhichKey can intercept.

-- Deleta a line without the newline
vim.keymap.set("n", "dl", "0d$", { desc = "Delete line content" })

-- navigate/move buffers in BufferLine
vim.keymap.set("n", "gj", "<cmd>BufferLineCyclePrev<cr>", { desc = "Buffer (prev)" })
vim.keymap.set("n", "gk", "<cmd>BufferLineCycleNext<cr>", { desc = "Buffer (next)" })
vim.keymap.set("n", "g<", "<cmd>BufferLineMovePrev<cr>", { desc = "Buffer move (left)" })
vim.keymap.set("n", "g>", "<cmd>BufferLineMoveNext<cr>", { desc = "Buffer move (right)" })

-- easier jump between matching braces
vim.keymap.set("", "<tab>", "%")

-- "exit anyways"
vim.keymap.set("n", "q:", "<cmd>q<return>")

-- Open terminal
vim.keymap.set("n", "<leader>t", function() Snacks.terminal() end, { desc = "Terminal" })
vim.keymap.del("n", "<leader>ft")
vim.keymap.del("n", "<leader>fT")

-- Treesitter incremental selection (using Neovim's built-in functions)
-- Note: Can't use `an`/`in` directly because mini.ai overrides them
--
-- Expand selection to parent node
vim.keymap.set({ "x" }, "<C-k>", function()
  local mode = vim.fn.mode()
  if mode == "n" then
    vim.cmd("normal! v")
  end
  if vim.treesitter.get_parser(nil, nil, { error = false }) then
    require("vim.treesitter._select").select_parent(vim.v.count1)
  else
    vim.lsp.buf.selection_range(vim.v.count1)
  end
end, { desc = "Selection (Incr)" })

-- Treesitter incremental selection (using Neovim's built-in functions)
-- Note: Can't use `an`/`in` directly because mini.ai overrides them
--
-- Shrink selection to child node
vim.keymap.set("x", "<C-j>", function()
  if vim.treesitter.get_parser(nil, nil, { error = false }) then
    require("vim.treesitter._select").select_child(vim.v.count1)
  else
    vim.lsp.buf.selection_range(-vim.v.count1)
  end
end, { desc = "Selection (decr)" })
