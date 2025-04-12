-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}
vim.opt.shell = "/usr/bin/fish"

M.term = {
  float = {
    col = 0.045,
    row = 0.04,
    width = 0.9,
    height = 0.85,
  },
  winopts = {},
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
  -- theme = "monokai", // custom theme
  theme = "gruvbox",

  integrations = { "semantic_tokens" },
  hl_override = {
    Tabline = { bold = true },
    -- Tabline = { bold = true },
    Normal = {
      bg = { "darker_black", 0 },
    },

    -- ["@keyword.import"] = { link = "Include" },
    -- ["@keyword.import"] = { link = "@keyword" },
    ["@variable.member"] = { link = "@variable" },
    ["@property"] = { link = "@variable" },
    ["@variable.parameter"] = { link = "@variable.builtin" },

    -- ["@lsp.mod.unused"] = { italic = true, fg = "#666666" },
    -- ["@lsp.typemod.variable.unused"] = { italic = true, fg = "#666666" },
  },
  transparency = false,

  hl_add = {
    WinBar = { bg = "NONE" },
    WinBarNC = { bg = "NONE" },
  },
}

return M
