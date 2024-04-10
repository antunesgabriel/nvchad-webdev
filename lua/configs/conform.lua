local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    tsx = { "prettierd" },
    json = { "prettierd" },
    typescript = { "prettierd" },
    javascript = { "prettierd" },
    go = { "goimports", "goimports-reviser", "gofumpt", "golines" },
    sql = { "sqlfmt" },
    toml = { "taplo" },
    yaml = { "yamlls" },
    prisma = { "prismaFmt" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
