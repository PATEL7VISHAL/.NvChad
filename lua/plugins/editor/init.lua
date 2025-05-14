return {
  {
    "Bekaboo/dropbar.nvim",
    -- optional, but required for fuzzy finder support
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
    },
    event = "UIEnter",
    -- event = "LspAttach",

    opts = {},
    config = function()
      local dropbar_api = require "dropbar.api"
      vim.keymap.set("n", "<leader>;", dropbar_api.pick, { desc = "Pick symbols in winbar" })
      -- vim.keymap.set("n", "[;", dropbar_api.select_next_context, { desc = "Select previous context" })
      -- vim.keymap.set("n", "];", dropbar_api.select_next_context, { desc = "Select next context" })
    end,
    -- enabled = false,
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = function(_, opts)
      opts.pickers = {
        find_files = {
          previewer = false, -- I just added for me
          -- hidden = true, -- To show hiddne files
          -- no_ignore = true, -- To show gitignored files
          -- no_ignore_parent = true,

          -- file_ignore_patterns = { -- Your custom paths to ignore
          --   "node_modules",
          --   "build/",
          --   "%.lock",
          --   "dist/",
          --   "%.git/",
          --   "%.next/",
          -- },
        },
      }
      return opts
    end,
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

  -- {
  --   "mg979/vim-visual-multi",
  --   -- event = "bufferAttech",
  --   event = "UIEnter",
  --   branch = "master",
  -- },

  -- {
  --   "MeanderingProgrammer/render-markdown.nvim",
  --   lazy = true,
  --   -- event = "BufEnter",
  --   -- dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" }, -- if you use the mini.nvim suite
  --   -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  --   cmd = { "RenderMarkdown" },
  --   dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
  --   ---@module 'render-markdown'
  --   ---@type render.md.UserConfig
  --   opts = {},
  -- },

  {
    "hedyhli/outline.nvim",
    lazy = true,
    -- event = "BufEnter",
    cmd = { "Outline", "OutlineOpen" },
    keys = {
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle Outline" },
    },
    opts = {
      outline_window = {
        position = "right",
        -- split_command = "botright vs",
      },
      preview_window = {
        live = true,
      },
    },
  },

  {
    --find and replace
    "nvim-pack/nvim-spectre",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "folke/trouble.nvim",
    },
    keys = {
      { "<leader>S", '<cmd>lua require("spectre").toggle()<CR>', desc = "Find and Replace" },
      {
        "<leader>sw",
        '<cmd>lua require("spectre").open_visual({select_word=true})<CR>',
        desc = "Search current word",
        mode = { "n", "v" },
      },
      {
        "<leader>sp",
        '<cmd>lua require("spectre").open_file_search({select_word=true})<CR>',
        desc = "Search on current file",
      },
    },
  },

  {
    --PERF: it has some perfomanace impect
    "RRethy/vim-illuminate",
    event = "VeryLazy",
    opts = {
      delay = 300,
      under_cursor = false,
      large_file_cutoff = 2000,
      large_file_overrides = {
        providers = { "lsp", "treesitter" },
      },
    },
    config = function(_, opts)
      local illuminate = require "illuminate"
      illuminate.configure(opts)
      vim.keymap.set("n", "]]", function()
        illuminate.goto_next_reference()
      end, { desc = "Next illuminate reference" })
      vim.keymap.set("n", "[[", function()
        illuminate.goto_prev_reference()
      end, { desc = "Prev illuminate reference" })
    end,
  },

  -- {
  --   "NeogitOrg/neogit",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim", -- required
  --     "sindrets/diffview.nvim", -- optional - Diff integration
  --
  --     -- Only one of these is needed.
  --     "nvim-telescope/telescope.nvim", -- optional
  --     -- "ibhagwan/fzf-lua", -- optional
  --     -- "echasnovski/mini.pick", -- optional
  --   },
  --   cmd = "Neogit",
  --   opts = {},
  -- },

  {
    "sindrets/diffview.nvim", -- optional - Diff integration
    cmd = "DiffviewOpen",
    opts = {
      -- enhanced_diff_hl = true, -- See |diffview-config-enhanced_diff_hl|
      file_panel = {
        -- listing_style = "tree", -- One of 'list' or 'tree'
        -- tree_options = { -- Only applies when listing_style is 'tree'
        --   flatten_dirs = true, -- Flatten dirs that only contain one single dir
        --   folder_statuses = "only_folded", -- One of 'never', 'only_folded' or 'always'.
        -- },
        win_config = { -- See |diffview-config-win_config|
          position = "right",
          -- width = 35,
          -- win_opts = {},
        },
      },
    },
    keys = {
      { "<leader>gd", "<cmd>DiffviewOpen<cr>", desc = "Git Diff view for current buffer" },
      { "<leader>gD", "<cmd>DiffviewClose<cr>", desc = "Close Git Diff view" },
    },
  },

  -- multi cursor
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvimtools/hydra.nvim",
    },
    opts = {},
    cmd = { "MCstart", "MCvisual", "MCclear", "MCpattern", "MCvisualPattern", "MCunderCursor" },
    keys = {
      {
        mode = { "v", "n" },
        "<Leader>m",
        "<cmd>MCstart<cr>",
        desc = "Create a selection for selected text or word under the cursor",
      },
    },
  },
}
