return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "stylelint",
        "sqlfluff",
        "sqlls",
        "yaml-language-server",
        "prisma-language-server",
        "yamllint",
        "jsonnetfmt",
        "json-to-struct",
        "golangci-lint-langserver",
        "golangci-lint",
        "css-lsp",
        "html-lsp",
        "prettierd",
        "sqlfmt",
        "angular-language-server",
        "sqls",
        "yamlfmt",
        "golines",
        "gofumpt",
        "goimports",
        "goimports-reviser",
        "gopls",
        "prettier",
        "lua-language-server",
        "templ",
        "taplo",
        "stylua",
        "docker-compose-language-service",
        "dockerfile-language-server",
        "emmet-language-server",
        "tailwindcss-language-server",
        "terraform-ls",
        "typescript-language-server",
        "vue-language-server",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "go",
        "tsx",
        "javascript",
        "typescript",
      },
    },
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
    "karb94/neoscroll.nvim",
    config = function()
      require("neoscroll").setup {}
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function(_, opts)
      require("todo-comments").setup(opts)
    end,
  },
}
