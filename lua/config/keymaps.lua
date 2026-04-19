-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

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
