-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.term = {
  float = {
    col = 0.045,
    row = 0.04,
    width = 0.9,
    height = 0.85,
  },
  winopts = {},
  -- base46_colors = true,
}

M.ui = {
  statusline = {
    theme = "minimal",
    separator_style = "round",
  },

  tabufline = {
    order = { "buffers", "tabs", "treeOffset" },
  },
  cmp = {
    icons_left = true,
    -- lspkind_text = true,
  },

  telescope = { style = "bordered" }, -- borderless / bordered
}

M.base46 = {
  theme = "gruvbox",

  integrations = { "semantic_tokens" },
  hl_override = {
    Tabline = { bold = true },
    Normal = {
      bg = { "darker_black", 0 },
      -- bg = { "base00", -1 },
    },
    LspInlayHint = { link = "Comment" },

    ["@variable.member"] = { link = "@variable" },
    ["@property"] = { link = "@variable" },
    ["@variable.parameter"] = { link = "@variable.builtin" },
    ["@punctuation.bracket"] = { -- works well with grovebox
      fg = "base0F", -- "base0A"
    },
    Special = { fg = "base08" },

    DiffAdd = { fg = "NONE" },
    DiffDelete = { fg = "NONE" },
    -- DiffChange = { fg = "NONE" },
    -- DiffChangeDelete = { fg = "NONE", bg = "red" },

    -- ["@keyword.import"] = { link = "Include" },
    -- ["@keyword.import"] = { link = "@keyword" },
    -- ["@lsp.mod.unused"] = { italic = true, fg = "#666666" },
    -- ["@lsp.typemod.variable.unused"] = { italic = true, fg = "#666666" },

    -- LspReferenceText = { underline = false, bg = "base01" },
    -- LspReferenceRead = { underline = false, bg = "base01" },
    -- LspReferenceWrite = { underline = false, bg = "base01" },
  },
  transparency = false,

  hl_add = {
    WinBar = { bg = "NONE" },
    WinBarNC = { bg = "NONE" },
    -- Illuminate
    IlluminatedWordRead = { underline = false, bg = "base01" },
    IlluminatedWordText = { underline = false, bg = "base01" },
    IlluminatedWordWrite = { underline = false, bg = "base01" },

    ["@lsp.type.formatSpecifier"] = { link = "@punctuation.bracket" },

    -- Diffview.nvim
    DiffviewFilePanelSelected = { fg = "sun", bold = true },
    -- DiffviewDiffAdd = { fg = "NONE", bg = "NONE" },
    -- DiffviewDiffAdd = { bg = "" },
  },

  changed_themes = {
    -- catppuccin = {
    --   base_30 = { darker_black = "#0d0d0d", black2 = "#141414" },
    --   base_16 = { base00 = "#000000" },
    -- },
    -- solarized_dark = { base_16 = {
    --   base01 = "#03303b",
    --   base02 = "#073642",
    -- } },
  },
}

M.nvdash = {
  load_on_startup = true,
}

return M
