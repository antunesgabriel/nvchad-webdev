require("supermaven-nvim").setup {
  -- configure supermaven
  -- see https://github.com/davidgranstrom/supermaven#configuration
  keymaps = {
    accept_suggestion = "<C-0>", -- Mapeia para Ctrl + )
    clear_suggestion = "<C-]>", -- Já mapeado para Ctrl + ]
    accept_word = "<C-j>", -- Mantém o mapeamento existente fdfsd
  },
}
