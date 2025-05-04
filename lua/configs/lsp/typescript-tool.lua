local M = {}
M.opt = {
  on_attach = require("nvchad.configs.lspconfig").on_attach,
  on_init = function(_, _) end,
  capabilities = require("nvchad.configs.lspconfig").capabilities,
  settings = {
    separate_diagnostic_server = false,
    tsserver_max_memory = 8192,
  },
}

M.config = function(_, opts)
  require("typescript-tools").setup(opts)
end

return M
