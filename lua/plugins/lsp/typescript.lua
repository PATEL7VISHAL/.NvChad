return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  -- event = "UIEnter",
  event = "BufEnter",
  opt = require("configs.lsp.typescript-tool").opt,
  config = require("configs.lsp.typescript-tool").config,
}
