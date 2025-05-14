local on_attach = require("nvchad.configs.lspconfig").on_attach
-- local on_init = require("nvchad.configs.lspconfig").on_init --NOTE: defualt NvChad ono_ini function disable the semanticTokens.
local capabilities = require("nvchad.configs.lspconfig").capabilities
--
local lspconfig = require "lspconfig"
require("nvchad.configs.lspconfig").defaults()

local function on_init(_, _)
  -- if client.supports_method "textDocument/semanticTokens" then --NOTE: by default NvChad enabled these code
  --   client.server_capabilities.semanticTokensProvider = nil
  -- end
end

local servers = {
  html = {},
  cssls = {},
  -- eslint = {},
  marksman = {},
  clangd = {},
  -- vtsls = {
  --   init_options = {
  --     disableFormatting = true,
  --   },
  --   settings = {
  --     vtsls = {
  --       experimental = {
  --         completion = {
  --           enableServerSideFuzzyMatch = true,
  --         },
  --       },
  --       autoUseWorkspaceTsdk = true,
  --     },
  --     typescript = {
  --       -- inlayHints = {
  --       --   parameterNames = { enabled = "all" },
  --       variableTypes = { enabled = true },
  --       --   propertyDeclarationTypes = { enabled = true },
  --       functionLikeReturnTypes = { enabled = true },
  --       --   enumMemberValues = { enabled = true },
  --       -- },
  --     },
  --   },
  --   -- flags = {
  --   --   debounce_text_changes = 150,
  --   -- },
  -- },
  -- ts_ls = {},
  -- rust_analyzer = {
  --   settings = {
  --     ["rust-analyzer"] = {
  --       cargo = {
  --         allFeatures = true,
  --       },
  --       procMacro = {
  --         enable = true,
  --         attributes = {
  --           enable = true,
  --         },
  --       },
  --       lru = {
  --         capacity = 256,
  --       },
  --       files = {
  --         watcher = "notify",
  --       },
  --       -- check = {
  --       --   command = "clippy",
  --       -- },
  --       -- diagnostics = {
  --       --   enable = true,
  --       -- },
  --       -- inlayHints = {
  --       --   enable = true,
  --       --   showParameterNames = true,
  --       --   parameterHintsPrefix = "<- ",
  --       --   otherHintsPrefix = "=> ",
  --       -- },
  --     },
  --   },
  -- },
}

-- for name, opts in pairs(servers) do
--   vim.lsp.enable(name)
--   vim.lsp.config(name, opts)
-- end

for name, _ in pairs(servers) do
  lspconfig[name].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

-- vim.lsp.enable(servers)

-- typescript
-- lspconfig.ts_ls.setup {
--   on_attach = on_attach,
--   on_init = on_init,
--   capabilities = capabilities,
--   -- flags = {
--   --   debounce_text_changes = 200,
--   -- },
--
--   init_options = {
--     maxTsServerMemory = 8192,
--     hostInfo = "neovim", -- Adjust the host info to tell the server we're using Neovim
--     preferences = {
--       disableAutomaticTypeAcquisition = true, -- Disable automatic type acquisition (for large projects)
--       includeCompletionsForModuleExports = false, -- Reduce unnecessary completions
--     },
--   },
-- }

-- eslint
lspconfig.eslint.setup {
  -- settings = {
  --   run = "onSave", -- not "onType"
  -- },
  -- flags = {
  --   debounce_text_changes = 500,
  -- },
}

-- vtsls
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
-- vim.lsp.config("rust_analyzer", {
--   settings = {
--     ["rust-analyzer"] = {
--       cargo = {
--         allFeatures = true,
--       },
--       procMacro = {
--         enable = true,
--         attributes = {
--           enable = true,
--         },
--       },
--       lru = {
--         capacity = 256,
--       },
--       files = {
--         watcher = "notify",
--       },
--       -- check = {
--       --   command = "clippy",
--       -- },
--       -- diagnostics = {
--       --   enable = true,
--       -- },
--       -- inlayHints = {
--       --   enable = true,
--       --   showParameterNames = true,
--       --   parameterHintsPrefix = "<- ",
--       --   otherHintsPrefix = "=> ",
--       -- },
--     },
--   },
-- })
-- vim.lsp.enable("rust_analyzer", true)

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

-- Default border style
-- local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
-- function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
--   opts = opts or {}
--   opts.border = "rounded"
--   return orig_util_open_floating_preview(contents, syntax, opts, ...)
-- end

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
  jump = {
    float = true,
  },
  underline = {
    severity = vim.diagnostic.severity.HINT,
  },
}
