return {
  {
    "Bekaboo/dropbar.nvim",
    -- optional, but required for fuzzy finder support
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    event = "UIEnter",
    opts = {},
    -- enabled = false,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = function(_, opts)
      opts.view = {
        adaptive_size = true,
        side = "right",
        width = 30,
        preserve_window_proportions = true,
      }
      return opts
    end,
  },
}
