return {
  -- { "nvzone/showkeys", cmd = "ShowkeysToggle" },
  -- smooth scroll
  {
    "karb94/neoscroll.nvim",
    -- event = "BufEnter",
    keys = { { "<C-d>" }, { "<C-u>" } },
    config = function()
      -- require("neoscroll").setup { mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>" } }
      -- require("neoscroll").setup { mappings = { "<C-b>", "<C-f>" }, duration_multiplier = 0.5, hide_cursor = false }
      require("neoscroll").setup {
        mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>" },
        duration_multiplier = 0.4,
        hide_cursor = false,
      }
    end,
  },

  -- { "nvzone/volt", lazy = true },
  -- { "nvzone/menu", lazy = true },
}
