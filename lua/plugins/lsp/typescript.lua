return {
  "pmizio/typescript-tools.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
  -- event = "UIEnter",
  event = "BufEnter",
  opts = require("configs.lsp.typescript-tool").opts,
  config = require("configs.lsp.typescript-tool").config,
}
