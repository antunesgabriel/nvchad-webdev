local conf = require "nvchad.configs.cmp"

-- Adiciona a fonte `supermaven` à lista de fontes
table.insert(conf.sources, { name = "supermaven" })

-- Obtém a configuração de UI e estilo
local cmp_ui = require("nvconfig").ui.cmp
local cmp_style = cmp_ui.style

-- Define o arranjo de campos baseado no estilo
local field_arrangement = {
    atom = { "kind", "abbr", "menu" },
    atom_colored = { "kind", "abbr", "menu" },
}

-- Define o estilo de formatação
local formatting_style = {
    fields = field_arrangement[cmp_style] or { "abbr", "kind", "menu" },

    format = function(_, item)
        local icons = require "nvchad.icons.lspkind"
        local icon = ""

        -- Verifica se o item.kind está presente e define o ícone
        if item.kind and icons[item.kind] then
            icon = icons[item.kind]
        end

        -- Adiciona o ícone customizado para `Supermaven`
        if item.kind == "Supermaven" then
            icon = ""
        end

        -- Configura o item.kind com o ícone
        if cmp_style == "atom" or cmp_style == "atom_colored" then
            icon = " " .. icon .. " "
            item.menu = cmp_ui.lspkind_text and "   (" .. item.kind .. ")" or ""
            item.kind = icon
        else
            icon = cmp_ui.lspkind_text and (" " .. icon .. " ") or icon
            item.kind = string.format("%s %s", icon, cmp_ui.lspkind_text and item.kind or "")
        end

        return item
    end,
}

-- Aplica a nova configuração de formatação
conf.formatting = formatting_style

return conf
