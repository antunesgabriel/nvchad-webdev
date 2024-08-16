-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local mason_registry = require "mason-registry"
local vue_language_server_path = mason_registry.get_package("vue-language-server"):get_install_path()
  .. "/node_modules/@vue/language-server"

local lspconfig = require "lspconfig"
local servers = {
  "html",
  "cssls",
  "gopls",
  "angularls",
  "dockerls",
  "emmet_ls",
  "terraformls",
  "taplo",
  "tsserver",
  "tailwindcss",
  "sqlls",
  "yamlls",
  "volar",
  "prismals",
  "docker_compose_language_service",
  "templ",
}

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
lspconfig.tsserver.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  init_options = {
    plugins = {
      {
        name = "@vue/typescript-plugin",
        location = vue_language_server_path,
        languages = { "vue" },
      },
    },
  },
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue" },
}

-- python
lspconfig.pyright.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  filetypes = { "python" },
}

-- vue

lspconfig.volar.setup {}
