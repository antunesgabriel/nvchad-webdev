local options = {
  formatters_by_ft = {
    typescript = { { "prettierd", "prettier" } },
    typescriptreact = { { "prettierd", "prettier" } },
    javascript = { { "prettierd", "prettier" } },
    javascriptreact = { { "prettierd", "prettier" } },
    json = { { "prettierd", "prettier" } },
    html = { { "prettierd", "prettier" } },
    css = { { "prettierd", "prettier" } },
    lua = { "stylua" },
    go = { "goimports", "goimports-reviser", "gofumpt", "golines" },
    sql = { "sqlfmt" },
    toml = { "taplo" },
    yaml = { "yamlls" },
    prisma = { "prismaFmt" },
    python = { "mypy", "ruff", "black" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
