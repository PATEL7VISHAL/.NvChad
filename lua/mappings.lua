require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map("n", "<S-l>", function()
  require("nvchad.tabufline").next()
end, { desc = "buffer goto next" })

map("n", "<S-h>", function()
  require("nvchad.tabufline").prev()
end, { desc = "buffer goto next" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- inlay hint
map("n", "<leader>L", function()
  if vim.lsp.inlay_hint.is_enabled { bufnr = 0 } then
    vim.lsp.inlay_hint.enable(false, { bufnr = 0 })
  else
    vim.lsp.inlay_hint.enable(true, { bufnr = 0 })
  end
end, { desc = "Toggle Inlay Hint" })


-- terminal
map("t", "jk", "<C-\\><C-n>", { desc = "Switch to Normal mode from Termianl" })
