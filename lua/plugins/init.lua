return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    -- dependencies = {
    --   "windwp/nvim-ts-autotag",
    -- },
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
      -- autotag = { enable = true },
    },
  },
  require "plugins.lsp",
  require "plugins.codding",
  require "plugins.editor",
  {
    import = "nvchad.blink.lazyspec",
  },
}
