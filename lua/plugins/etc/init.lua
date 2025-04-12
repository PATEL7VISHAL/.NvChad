return {
  require "plugins.etc.leetcode-nvim",

  {
    "rmagatti/auto-session",
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { "~/", "~/Downloads", "/" },
      -- log_level = 'debug',
    },
    keys = {
      { "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session for auto-session" },
    },
  },
}
