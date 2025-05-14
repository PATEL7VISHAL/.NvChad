require "nvchad.mappings"

-- add yours here
local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>e", ":NvimTreeToggle<CR>")
map("n", "<C-S-e>", ":NvimTreeFocus<CR>")
map("n", "m", ":mark ", { desc = "Mark" })
-- map("n", "<C-d>", "<C-d>zz", { desc = "half window down with window center" })
-- map("n", "<C-u>", "<C-u>zz", { desc = "half window up with window center" })
map("x", "<leader>p", '"_dP', { desc = "persist past" })

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
map("t", "<C-l>", "<Right>", { desc = "Shortcut for right arrow key for completion in terminal" })

-- diagnostics
map("n", "<leader>df", vim.diagnostic.open_float, { desc = "Open Diagnostics in floating window" })

-- lsp
map("n", "K", function() -- lsp hover
  vim.lsp.buf.hover { border = "rounded" }
end, { desc = "Lsp hover" })
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

-- git
map("n", "]h", "<cmd>Gitsigns next_hunk<cr>", { desc = "Next Git Hunk" })
map("n", "[h", "<cmd>Gitsigns prev_hunk<cr>", { desc = "Previous Git Hunk" })
-- map("n", "<leader>gd", "<cmd>Gitsigns diffthis<cr>", { desc = "Git Diff view for current buffer" })
-- map("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Git Diff view for current buffer" })
