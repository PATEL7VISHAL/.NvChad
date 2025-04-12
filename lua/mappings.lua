require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<C-S-e>", ":NvimTreeFocus<CR>")

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

-- diagnostics
map("n", "<leader>df", vim.diagnostic.open_float, { desc = "Open Diagnostics in floating window" })

-- lsp
map("n", "<leader>lr", require "nvchad.lsp.renamer", { desc = "NvRenamer" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Lsp Code Action" })

local diagnostic_config = {
  severity = {
    min = vim.diagnostic.severity.WARN,
  },
}
map("n", "<leader>dl", function()
  if vim.diagnostic.config().virtual_text then
    vim.diagnostic.config {
      virtual_text = false,
      virtual_lines = diagnostic_config,
    }
  else
    vim.diagnostic.config {
      virtual_text = diagnostic_config,
      virtual_lines = false,
    }
  end
end, { desc = "Toggle virtual lines" })

-- telescope
map("n", "<leader>fs", function()
  require("telescope.builtin").lsp_document_symbols {
    layout_config = {
      width = 0.9,
      preview_width = 0.6,
      prompt_position = "bottom",
    },
  }
end, { desc = "LSP Document Symbols" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "telescope grep current word" })

-- config
map("n", "<leader>rr", ":luafile %<CR>", { desc = "Reload current config file" })
