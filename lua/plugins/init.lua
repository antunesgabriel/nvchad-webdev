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
        "stylelint",
        "prettier",
        "prettierd",
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
        "angular-language-server",
        "sqlls",
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
        "pyright",
        "mypy",
        "ruff",
        "black",
        "sql-formatter",
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
    config = function(_, opts)
      require("neoscroll").setup(opts)
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    config = function()
      require("todo-comments").setup()
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
    -- opts = {},
  },
  {
    "windwp/nvim-ts-autotag",
  },
  {
    "norcalli/nvim-colorizer.lua",
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
      -- background_colour = "NotifyBackground",
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    },
  },
  {
    "supermaven-inc/supermaven-nvim",
    config = function() end,
    lazy = true,
  },
  {
    "nvim-tree/nvim-tree.lua",
    cmd = { "NvimTreeToggle", "NvimTreeFocus" },
    opts = function()
      return require "configs.nvimtree"
    end,
  },
}
