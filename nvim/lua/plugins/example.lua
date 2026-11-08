return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    opts = {
      servers = {
        rust_analyzer = {},
        pyright = {},
        clangd = {},
        html = {},
        cssls = {},
        ts_ls = {},
        idris2_lsp = {},
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "rust",
          "python",
          "lua",
          "c",
          "html",
          "css",
          "javascript",
          "idris",
        })
      end
    end,
  },

  -- 2. Vahetatud idris2-nvim vastu, mis toetab täielikult Lua-d ja LSP-d
  {
    "ShinKage/idris2-nvim",
    ft = { "idris", "lidris", "idris2", "idr" },
    opts = {},
  },

  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = "catppuccin",
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
      },
    },
  },

  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "rust-analyzer",
        "pyright",
        "black",
        "stylua",
        "html-lsp",
        "css-lsp",
        "typescript-language-server",
        "clangd",
        "clang-format",
      },
    },
  },
}
