return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        idris2_lsp = {
          cmd = { "idris2-lsp" },
          filetypes = { "idris2" },
          root_markers = {
            "package.ipkg",
            "*.ipkg",
            ".git",
          },
        },
      },
    },
  },
}
