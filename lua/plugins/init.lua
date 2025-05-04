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
        "javascript",
        "typescript",
        "tsx",
        "rust",
        "c",
        "cpp",
      },
      -- autotag = { enable = true },
      indent = { enable = false }, --NOTE: This is an experimental feature(also create some lag on rapid keystorks).
      highlight = {
        enable = true,
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
      },
    },
  },

  {
    import = "nvchad.blink.lazyspec",
  },

  require "plugins.lsp",
  require "plugins.codding",
  require "plugins.editor",
  require "plugins.ui", --has an issue
  require "plugins.etc",
}
