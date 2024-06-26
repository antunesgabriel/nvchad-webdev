require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jj", "<ESC>")

map("n", "<leader>gsj", "<cmd> GoTagAdd json <CR>", { desc = "Add json struct tags" })
map("n", "<leader>gsy", "<cmd> GoTagAdd yaml <CR>", { desc = "Add yaml struct tags" })
map({ "n", "t" }, "<leader>tf", function()
  require("nvchad.term").toggle { pos = "float", id = "floatTerm" }
end, { desc = "Terminal Toggle Floating term" })

map(
  "n",
  "<leader>tdl",
  "<cmd> TodoTelescope keywords=TODO,FIX,NOTE <CR>",
  { desc = "Show comment todo, fix and note list" }
)

map("n", "<leader>cl", "<cmd> noh <CR>", { desc = "Clean all highlight search" })
