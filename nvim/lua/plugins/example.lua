-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
if true then return {} end

return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },

  -- Rust plugins
  -- Language Server for Rust
  {
    "rust-analyzer",
    ft = "rust",
    config = function()
      require("lspconfig").rust_analyzer.setup({})
    end,
  },

  -- nvim-lspconfig for language server management
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {},
      },
    },
  },

  -- Treesitter for syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "rust",
        "lua",
        "javascript",
        "python",
      },
    },
  },

  -- Completion plugin
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "nvim_lsp" })
    end,
  },

  -- Status line
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "gruvbox",
      },
    },
  },

  -- Fuzzy finder
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
      },
    },
  },

  -- Tool manager for Rust-related tools
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "rustfmt",
        "cargo",
        "clippy",
      },
    },
  },
}
