return {
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  --
  {
    -- "williamboman/mason.nvim",
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "ts_ls",
        "vtsls",
        "prettierd",
      },
    },
  },

  -- require "plugins.lsp.typescript", -- not seems much improvement.
  require "plugins.lsp.neodev",
  -- require "plugins.lsp.rust",
}
