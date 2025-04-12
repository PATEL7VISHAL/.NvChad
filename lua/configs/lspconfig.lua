local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "eslint", "marksman", "clangd" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- typescript
-- lspconfig.ts_ls.setup {
--   on_attach = on_attach,
--   -- on_attach = function(client)
--   --   client.resolved_capabilities.document_formatting = false
--   --   client.resolved_capabilities.diagnostics = false
--   --   return on_attach
--   -- end,
--   on_init = on_init,
--   capabilities = capabilities,
--   -- flags = {
--   --   debounce_text_changes = 150,
--   -- },
-- }

lspconfig.vtsls.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  init_options = {
    disableFormatting = true,
  },
  settings = {
    vtsls = {
      experimental = {
        completion = {
          enableServerSideFuzzyMatch = true,
        },
      },
      autoUseWorkspaceTsdk = true,
    },
    typescript = {
      -- inlayHints = {
      --   parameterNames = { enabled = "all" },
      variableTypes = { enabled = true },
      --   propertyDeclarationTypes = { enabled = true },
      functionLikeReturnTypes = { enabled = true },
      --   enumMemberValues = { enabled = true },
      -- },
    },
  },
  -- flags = {
  --   debounce_text_changes = 150,
  -- },
}

-- rust
lspconfig.rust_analyzer.setup {
  on_attach = on_attach,
  on_init = on_init,
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      cargo = {
        allFeatures = true,
      },
      procMacro = {
        enable = true,
        attributes = {
          enable = true,
        },
      },
      lru = {
        capacity = 256,
      },
      files = {
        watcher = "notify",
      },
      -- check = {
      --   command = "clippy",
      -- },
      -- diagnostics = {
      --   enable = true,
      -- },
      -- inlayHints = {
      --   enable = true,
      --   showParameterNames = true,
      --   parameterHintsPrefix = "<- ",
      --   otherHintsPrefix = "=> ",
      -- },
    },
  },
}

--TODO:
-- vim.g.rustaceanvim = {
--   -- Plugin configuration
--   tools = {},
--   -- LSP configuration
--   server = {
--     -- on_attach = function(client, bufnr)
--     --   -- you can also put keymaps in here
--     -- end,
--     on_attach = on_attach,
--     on_init = on_init,
--     capabilities = capabilities,
--
--     default_settings = {
--       -- rust-analyzer language server configuration
--       ["rust-analyzer"] = {},
--     },
--   },
--   -- DAP configuration
--   dap = {},
-- }

local border = "rounded"
local win = require "lspconfig.ui.windows"
win.default_options = { border = border }
vim.diagnostic.open_float()
vim.diagnostic.config {
  update_in_insert = false,
  virtual_text = {
    severity = {
      min = vim.diagnostic.severity.WARN,
    },
  },
  virtual_lines = false,
  float = { border = border },
  underline = {
    severity = vim.diagnostic.severity.HINT,
  },
}
