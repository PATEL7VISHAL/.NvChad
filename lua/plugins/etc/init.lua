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
      { "<leader>wf", "<cmd>SessionSearch<CR>", desc = "Save session for auto-session" },
    },
  },

  {
    "nvzone/typr",
    dependencies = "nvzone/volt",
    cmd = { "Typr", "TyprStats" },
    opts = {
      wpm_goal = 120,
      stats_filepath = vim.fn.stdpath "data" .. "/config",
    },
  },
}
