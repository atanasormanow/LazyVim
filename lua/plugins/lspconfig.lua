return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = false,
      },
      servers = {
        ["*"] = {
          keys = {
            { "<F2>", vim.lsp.buf.rename, desc = "Rename", has = "rename" },
          },
        },
      },
    },
  },
}
