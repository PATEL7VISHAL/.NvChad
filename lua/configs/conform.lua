local options = {
  -- event = { "LspAttach", "BufWritePre" },
  notify_on_error = true,
  log_level = vim.log.levels.DEBUG,
  async = true,
  lsp_fallback = true,
  formatters = {
    prettierd = {
      command = vim.fn.stdpath "data" .. "/mason/bin/prettierd", -- direct binary
      args = { "--stdin-filepath", "$FILENAME" },
    },
  },

  formatters_by_ft = {
    lua = { "stylua" },
    ["javascript"] = { "prettierd" },
    ["javascriptreact"] = { "prettierd" },
    ["typescript"] = { "prettierd" },
    ["typescriptreact"] = { "prettierd" },
    ["json"] = { "prettierd" },
    ["markdown"] = { "prettierd" },
    ["html"] = { "prettierd" },
    ["css"] = { "prettierd" },
    ["scss"] = { "prettierd" },
    ["jsonc"] = { "prettierd" },

    -- other
    ["vue"] = { "prettierd" },
    ["less"] = { "prettierd" },
    ["yaml"] = { "prettierd" },
    ["markdown.mdx"] = { "prettierd" },
    ["graphql"] = { "prettierd" },
    ["handlebars"] = { "prettierd" },
  },

  -- format_on_save = {
  --   async = true,
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 1500,
  --   lsp_fallback = true,
  -- },
}

require("conform").setup(options)
